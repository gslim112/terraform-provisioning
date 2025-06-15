terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "gslim-id-apnortheast2-tfstate"
    key            = "provisioning/terraform/ecr/gslim-id/ap-northeast-2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

