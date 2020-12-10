provider "packet" {
  auth_token = var.token
}

resource "packet_device" "web1" {
  hostname         = "web1_server"
  plan             = "c3.medium.x86"
  facilities       = ["sin3"]
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = var.equinix_project_id

}
