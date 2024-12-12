terraform {
  backend "s3" {
    bucket         = "sathwik-rapala-terraform-bucket"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "sathwik-rapala-terraform-bucket-locks"
    encrypt        = true
  }
}