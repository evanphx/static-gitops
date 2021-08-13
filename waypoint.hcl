project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {
    }

    registry {
      use "docker" {
        image = "host.docker.internal:5000/static"
        tag = "latest"
      }
    }
  }

  deploy {
    use "docker" {
    }
  }
}
