terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-tf-aws-eks-remote-state"
    key    = "roboshop-tf-aws-eks-vpc"
    region = "us-east-1"
    dynamodb_table = "roboshop-tf-aws-eks-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


