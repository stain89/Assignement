# Creating App ELB
module "app-elb" {
  source      = "git@github.com:stain89/terraform-module-classic-loadbalancer.git"
  vpc_id      = module.vpc.vpc_id
  name        = var.name
  environment = var.environment
  aws_region  = var.aws_region
  security_groups_ids = [
  module.app-elb-sg.security_group_id]
  subnet_type = "Public"

  listener = [
    {
      instance_port     = "80"
      instance_protocol = "http"
      lb_port           = "80"
      lb_protocol       = "http"
    }
  ]
}