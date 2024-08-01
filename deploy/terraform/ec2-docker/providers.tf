terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "testfromcli2"
    key    = "state/backends"
    region = "ap-south-1"
    dynamodb_table = "mylocking"
  }
}

provider "aws" {
  # Configuration options
}