terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "terraform-state-demo-sristy"
    key            = "terra-backend/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}


