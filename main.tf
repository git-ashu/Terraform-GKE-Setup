provider "google" {
  credentials = file(var.GOOGLE_CREDENTIALS_PATH)
  project     = var.GOOGLE_PROJECT_ID
  region      = var.GOOGLE_REGION
}

resource "google_container_cluster" "primary" {
  name               = "gke-cluster"
  location           = var.GOOGLE_REGION
  initial_node_count = 3

  node_config {
    machine_type = "e2-standard-2"
  }
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  node_count = 2

  node_config {
    machine_type = "e2-standard-2"
  }
}
