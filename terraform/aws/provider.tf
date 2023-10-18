terraform { 
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }


   backend "s3" {
    bucket         = "tf-multi-az"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-multi-az-2"
    region         = "us-east-1"
  }

}


