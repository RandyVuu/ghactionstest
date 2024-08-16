 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "rendelltfstate"
    key            = "state.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
