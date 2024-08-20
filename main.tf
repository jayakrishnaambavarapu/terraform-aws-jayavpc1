provider "aws" {
  region = "eu-north-1"
}
provider "aws" {
  alias = "east"
  region = "us-east-1"
}

module "vpc-1" {
  source = "./module-a"
}

module "vpc-2" {
  source = "./module-b"
  providers = {
    aws = aws.east
}
}
