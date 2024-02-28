provider "aws" {
  region = var.region
}

# vpc
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
