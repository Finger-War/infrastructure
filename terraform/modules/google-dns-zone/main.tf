resource "google_dns_managed_zone" "my_zone" {
  name        = var.google_zone_name
  dns_name    = "${var.google_zone_dns_name}."

  cloud_logging_config {
    enable_logging = true
  }
}

output "dns_zone_name" {
  value = google_dns_managed_zone.my_zone.name
}
