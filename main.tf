provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Class30"
    Team = "DevOps"
  }
}

terraform {

  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
  }
}
  backend "s3" {
    bucket = "myotherclass25bucket"
    key = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}