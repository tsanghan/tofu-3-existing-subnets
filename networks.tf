################################################################################
# Supporting Resources
################################################################################

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.13.0"

  name = local.name
  cidr = local.vpc_cidr

  azs = local.azs
  # public_subnets           = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k)]
  # private_subnets          = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 48)]
  public_subnets           = ["10.0.0.0/24", "10.0.4.0/24", "10.0.1.0/24", "10.0.5.0/24"]
  private_subnets          = ["10.0.2.0/24", "10.0.6.0/24", "10.0.3.0/24", "10.0.7.0/24"]
  enable_nat_gateway       = true
  single_nat_gateway       = true
  one_nat_gateway_per_az   = false
  default_route_table_name = "${local.name}-default-rt"
  map_public_ip_on_launch  = true

  tags = local.common_tags
}