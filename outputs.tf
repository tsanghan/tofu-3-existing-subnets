output "azs_names" {
  value = data.aws_availability_zones.available.names
}

output "slice" {
  value = local.azs
}

output "module_vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "module_vpc_public_subnets_cidr_blocks" {
  value = module.vpc.public_subnets_cidr_blocks
}

output "module_vpc_private_subnets" {
  value = module.vpc.private_subnets
}

output "module_vpc_private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "module_vpc_id" {
  value = module.vpc.vpc_id
}

output "module_vpc" {
  value = module.vpc
}