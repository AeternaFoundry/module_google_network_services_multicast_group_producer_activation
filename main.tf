resource "google_network_services_multicast_group_producer_activation" "network_services_multicast_group_producer_activations" {
  for_each = var.network_services_multicast_group_producer_activations

  location                               = each.value.location
  multicast_group_producer_activation_id = each.value.multicast_group_producer_activation_id
  multicast_group_range_activation       = each.value.multicast_group_range_activation
  multicast_producer_association         = each.value.multicast_producer_association
  deletion_policy                        = each.value.deletion_policy
  description                            = each.value.description
  labels                                 = each.value.labels
  project                                = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

