module "vpc" {
  source = "git::https://github.com/<your-org>/terraform-module-vpc.git?ref=v1.0.0"

  cidr_block = "10.0.0.0/16"
  vpc_name   = "myapp-dev-vpc"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}