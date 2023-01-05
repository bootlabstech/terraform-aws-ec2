terraform {
  required_version = ">=1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }
}
provider "aws" {
  region = var.region
}
