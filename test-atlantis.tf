provider "aws" {
  region                  = var.region
  access_key              = var.aws_access_key
  secret_key              = var.aws_secret_key
}

# vpc for test atlantis
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "region" {
  type        = string
  default     = "us-east-2"
  description = "AWS region"
}
