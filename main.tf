# This block specifies the required provider (Docker) for Terraform.
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

# This block configures the Docker provider.
provider "docker" {}

# This resource defines the Docker container to be created.
resource "docker_container" "juice_shop" {
  name  = "juice-shop-app"
  image = "bkimminich/juice-shop:v15.0.0"
  ports {
    internal = 3000
    external = 3000
  }
}