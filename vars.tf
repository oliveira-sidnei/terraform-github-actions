variable "aws_region" {
  default = "sa-east-1"
}

locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}

variable "repository_name" {
  default = "aws-ecs-fargate-repo"
}

variable "environment" {
  default = "terraform-aws-sohs"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/20", "10.0.128.0/20"]
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.16.0/20", "10.0.144.0/20"]
  description = "CIDR block for Private Subnet"
}