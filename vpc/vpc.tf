module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = var.vpc_name
  cidr = var.cidr_block

  azs                 = var.azs
  public_subnet_names = var.public_subnet_names
  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }
  public_subnets          = var.public_subnets_cidr
  public_route_table_tags = var.public_route_table_tags
  map_public_ip_on_launch = true

  private_subnet_names = var.private_subnet_names
  private_subnets      = var.private_subnets_cidr
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }
  private_route_table_tags = var.private_route_table_tags

  database_subnet_names      = var.database_subnet_names
  database_subnets           = var.database_subnets_cidr
  database_route_table_tags  = var.database_route_table_tags
  # database_subnet_group_name = var.database_subnet_group_name

  # elasticache_subnet_group_name = var.elasticache_subnet_group_name



  enable_nat_gateway     = true
  one_nat_gateway_per_az = true

  create_database_subnet_group       = true
  create_database_subnet_route_table = true

  enable_dns_hostnames = true
  enable_dns_support   = true

}
