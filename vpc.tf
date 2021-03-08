# Creating VPC

module "vpc" {
  source      = "git@github.com:stain89/terraform-module-vpc.git"
  name        = var.name
  environment = var.environment
  aws_region  = var.aws_region
  availability_zones = [
    "us-east-1a",
  "us-east-1b"]
  vpc_cidr = "10.10.0.0/24"
  public_subnet_cidr = [
    "10.10.0.0/26",
  "10.10.0.64/26"]
  private_subnet_cidr = [
    "10.10.0.128/26",
  "10.10.0.192/26"]
}