resource "google_container_cluster" "primary" {
  name               = "marcellus-wallace"
  location           = "us-west2-a"
  initial_node_count = 3

# Using a single zone is the cheapest way to bring up a multi-node cluster. You
# would typically deploy to multiple zones in production for resiliance.


  min_master_version = "latest"

  master_auth {
    username = "test"
    password = "pranktestislongenough"

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      foo = "bar"
    }

    tags = ["foo", "bar"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}
