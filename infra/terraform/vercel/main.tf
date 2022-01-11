terraform {
  required_providers {
    vercel = {
      source  = "registry.terraform.io/chronark/vercel"
      version = ">=0.10.3"
    }
  }
}

provider "vercel" {
}

resource "vercel_project" "my_project" {
  name = "next-js-deployment-analysis"
  git_repository {
    type = "github"
    repo = "ganesanarun/next-js-deployment-analysis"
  }
}