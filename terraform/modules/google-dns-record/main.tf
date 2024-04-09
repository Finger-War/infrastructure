resource "google_dns_record_set" "gke_record" {
  name = "${var.google_dns_record_name}.${var.google_zone_dns_name}."
  type = var.google_dns_record_type
  ttl  = var.google_dns_record_ttl

  managed_zone = var.google_zone_name

  rrdatas = [data.kubernetes_service.nginx_ingress.status[0].load_balancer[0].ingress[0].ip]
}
