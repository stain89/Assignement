module "app-elb-sg" {
  source      = "git@github.com:stain89/terraform-module-security-group.git"
  vpc_id      = module.vpc.vpc_id
  name        = var.name
  environment = var.environment
  aws_region  = var.aws_region
}