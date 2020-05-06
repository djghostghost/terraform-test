provider "aws" {
  profile = "default"
  region = "ap-northeast-1"
}

resource "aws_dynamodb_table" "tfc_example_table" {
  name = var.db_table_name
  read_capacity = var.db_read_capacity
  write_capacity = var.db_write_capacity
  hash_key = "UUID"

  attribute {
    name = "UUID"
    type = "S"
  }
  tags = {
    Cost = "smartnews"
    Team = "Growth-Backend"
    Env = "experimentation"
    "custom:Usage" = "Terraform-Training"
  }
}