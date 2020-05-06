variable "db_table_name" {
  type = string
  default = "example"
}

variable "db_read_capacity" {
  type = number
  default = 1
}

variable "db_write_capacity" {
  type = number
  default = 1
}