# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

#provider "aws" {
#  region = var.aws_region
#   assume_role {
#    role_arn = "arn:aws:iam::451828507500:role/terraform-admin"
#  }
#}