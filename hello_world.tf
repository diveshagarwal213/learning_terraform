variable "x" {
  type = string
}

output "my_x" {
  value = "x value is ${upper(var.x)}"
}
