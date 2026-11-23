terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "render_env" {
  filename        = "${path.module}/render.env.example"
  file_permission = "0644"
  content         = <<-EOT
    APP_NAME=BookmarkShelf
    APP_ENV=production
    APP_DEBUG=true
    APP_KEY=
    DB_CONNECTION=sqlite
    LOG_CHANNEL=stderr
    LOG_LEVEL=error
  EOT
}
