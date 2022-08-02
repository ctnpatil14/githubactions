provider "google" {
  project     = "tgt-june-2022"
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "disk1" {
    name = "disk1"
    project = "tgt-june-2022"
}

output "disk" {
    value = data.google_compute_disk.disk1
}
