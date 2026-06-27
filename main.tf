#local provider
terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "~> 2.5"
    }
  }
}

#resources
resource "local_file" "variable_file" {
  filename = "${path.module}/${var.my_filename}"
  content = var.my_content
}