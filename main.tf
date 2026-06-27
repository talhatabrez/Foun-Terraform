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
resource "local_file" "hello_world" {
  filename = "${path.module}/hello.txt"
  content = "Hello!"
}