variable "vpc_name" {
  type    = string
  default = "test-vpc"

}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"

}

variable "azs" {
  type    = list(string)
  default = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]

}

variable "public_subnet_names" {
  type    = list(string)
  default = ["skills-public-a", "skills-public-b", "skills-public-c"]
}

variable "public_subnets_cidr" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]

}

variable "public_route_table_tags" {
  type = map(string)
  default = {
    "Name" = "skills-public-rt"
  }

}

variable "private_subnet_names" {
  type    = list(string)
  default = ["skills-private-a", "skills-private-b", "skills-private-c"]
}

variable "private_subnets_cidr" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]

}

variable "private_route_table_tags" {
  type = map(string)
  default = {
    "Name" = "skills-private-a-rt" ## az별 설정은 콘솔에서 직접

  }

}

variable "database_subnet_names" {
  type    = list(string)
  default = ["skills-protected-a", "skills-protected-b", "skills-protected-c"]
}

variable "database_subnets_cidr" {
  type    = list(string)
  default = ["10.0.6.0/24", "10.0.7.0/24", "10.0.8.0/24"]

}

variable "database_route_table_tags" {
  type = map(string)
  default = {
    "Name" = "skills-db-a-rt" ## az별 이름 설정 콘솔에서 직접

  }

}

variable "database_subnet_group_name" {
  type    = string
  default = "skills-db-subnet-group"
}

variable "elasticache_subnet_group_name" {
  type    = string
  default = "skills-elasticache-subnet-group"
}


