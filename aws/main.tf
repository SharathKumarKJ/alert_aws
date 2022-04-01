terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.11"
    }
  }
}

provider "aws" {
  region = var.region
}

module "compute" {
  source = "./compute"
}

module "network" {
  source = "./network"
}

module "storage" {
  source = "./storage"
}
