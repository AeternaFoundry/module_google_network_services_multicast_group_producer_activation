variable "network_services_multicast_group_producer_activations" {
  description = <<EOT
Map of network_services_multicast_group_producer_activations, attributes below
Required:
    - location
    - multicast_group_producer_activation_id
    - multicast_group_range_activation
    - multicast_producer_association
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                               = string
    multicast_group_producer_activation_id = string
    multicast_group_range_activation       = string
    multicast_producer_association         = string
    deletion_policy                        = optional(string)
    description                            = optional(string)
    labels                                 = optional(map(string))
    project                                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

