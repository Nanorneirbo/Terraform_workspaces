
resource "aws_instance" "example" {
  ami = "ami-0eff4f2497a2ce392"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "nanos-terraform-bucket"
    key = "workspaces-example/terraform.tfstate"
    region = "eu-west-1"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true


  }

}