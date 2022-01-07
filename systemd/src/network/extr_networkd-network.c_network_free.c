
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dhcp_server_raw_options; int dhcp_send_options; int dnssec_negative_trust_anchors; int dhcp_server_sip; int dhcp_server_ntp; int dhcp_server_dns; int dhcp_server_timezone; int name; int duid; TYPE_1__* manager; int qdiscs_by_section; int rules_by_section; int route_prefixes_by_section; int prefixes_by_section; int address_labels_by_section; int neighbors_by_section; int fdb_entries_by_section; int nexthops_by_section; int routes_by_section; int addresses_by_section; int * rules; int * static_route_prefixes; int * static_prefixes; int * address_labels; int * neighbors; int * ipv6_proxy_ndp_addresses; int * static_fdb_entries; int * static_addresses; int * static_nexthops; int * static_routes; int stacked_netdevs; int vrf; int bond; int bridge; int stacked_netdev_names; int vrf_name; int bond_name; int bridge_name; int ndisc_black_listed_prefix; int router_dns; int router_search_domains; int bind_carrier; int route_domains; int search_domains; int sip; int dns; int ntp; int mac; int dhcp_request_options; int dhcp_black_listed_ip; int dhcp_hostname; int dhcp_user_class; int dhcp_vendor_class_identifier; int description; int conditions; int match_bssid; int match_ssid; int match_wlan_iftype; int match_property; int match_name; int match_type; int match_driver; int match_path; int match_mac; int filename; } ;
struct TYPE_7__ {scalar_t__ duids_requesting_uuid; } ;
typedef int RoutingPolicyRule ;
typedef int RoutePrefix ;
typedef int Route ;
typedef int Prefix ;
typedef int NextHop ;
typedef TYPE_2__ Network ;
typedef int Neighbor ;
typedef int IPv6ProxyNDPAddress ;
typedef int FdbEntry ;
typedef int AddressLabel ;
typedef int Address ;


 int address_free (int *) ;
 int address_label_free (int *) ;
 int condition_free_list (int ) ;
 int fdb_entry_free (int *) ;
 int free (int ) ;
 int hashmap_free (int ) ;
 int hashmap_free_free_key (int ) ;
 int hashmap_free_with_destructor (int ,int (*) (int )) ;
 int ipv6_proxy_ndp_address_free (int *) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int neighbor_free (int *) ;
 int netdev_unref (int ) ;
 int nexthop_free (int *) ;
 int ordered_hashmap_free (int ) ;
 int ordered_hashmap_free_with_destructor (int ,int ) ;
 int ordered_set_free_free (int ) ;
 int prefix_free (int *) ;
 int qdisc_free ;
 int route_free (int *) ;
 int route_prefix_free (int *) ;
 int routing_policy_rule_free (int *) ;
 int set_free (int ) ;
 int set_free_free (int ) ;
 int set_remove (scalar_t__,int *) ;
 int strv_free (int ) ;

__attribute__((used)) static Network *network_free(Network *network) {
        IPv6ProxyNDPAddress *ipv6_proxy_ndp_address;
        RoutePrefix *route_prefix;
        RoutingPolicyRule *rule;
        AddressLabel *label;
        FdbEntry *fdb_entry;
        Neighbor *neighbor;
        Address *address;
        NextHop *nexthop;
        Prefix *prefix;
        Route *route;

        if (!network)
                return ((void*)0);

        free(network->filename);

        set_free_free(network->match_mac);
        strv_free(network->match_path);
        strv_free(network->match_driver);
        strv_free(network->match_type);
        strv_free(network->match_name);
        strv_free(network->match_property);
        strv_free(network->match_wlan_iftype);
        strv_free(network->match_ssid);
        set_free_free(network->match_bssid);
        condition_free_list(network->conditions);

        free(network->description);
        free(network->dhcp_vendor_class_identifier);
        strv_free(network->dhcp_user_class);
        free(network->dhcp_hostname);
        set_free(network->dhcp_black_listed_ip);
        set_free(network->dhcp_request_options);
        free(network->mac);

        strv_free(network->ntp);
        free(network->dns);
        strv_free(network->sip);
        ordered_set_free_free(network->search_domains);
        ordered_set_free_free(network->route_domains);
        strv_free(network->bind_carrier);

        ordered_set_free_free(network->router_search_domains);
        free(network->router_dns);
        set_free_free(network->ndisc_black_listed_prefix);

        free(network->bridge_name);
        free(network->bond_name);
        free(network->vrf_name);
        hashmap_free_free_key(network->stacked_netdev_names);
        netdev_unref(network->bridge);
        netdev_unref(network->bond);
        netdev_unref(network->vrf);
        hashmap_free_with_destructor(network->stacked_netdevs, netdev_unref);

        while ((route = network->static_routes))
                route_free(route);

        while ((nexthop = network->static_nexthops))
                nexthop_free(nexthop);

        while ((address = network->static_addresses))
                address_free(address);

        while ((fdb_entry = network->static_fdb_entries))
                fdb_entry_free(fdb_entry);

        while ((ipv6_proxy_ndp_address = network->ipv6_proxy_ndp_addresses))
                ipv6_proxy_ndp_address_free(ipv6_proxy_ndp_address);

        while ((neighbor = network->neighbors))
                neighbor_free(neighbor);

        while ((label = network->address_labels))
                address_label_free(label);

        while ((prefix = network->static_prefixes))
                prefix_free(prefix);

        while ((route_prefix = network->static_route_prefixes))
                route_prefix_free(route_prefix);

        while ((rule = network->rules))
                routing_policy_rule_free(rule);

        hashmap_free(network->addresses_by_section);
        hashmap_free(network->routes_by_section);
        hashmap_free(network->nexthops_by_section);
        hashmap_free(network->fdb_entries_by_section);
        hashmap_free(network->neighbors_by_section);
        hashmap_free(network->address_labels_by_section);
        hashmap_free(network->prefixes_by_section);
        hashmap_free(network->route_prefixes_by_section);
        hashmap_free(network->rules_by_section);
        ordered_hashmap_free_with_destructor(network->qdiscs_by_section, qdisc_free);

        if (network->manager &&
            network->manager->duids_requesting_uuid)
                set_remove(network->manager->duids_requesting_uuid, &network->duid);

        free(network->name);

        free(network->dhcp_server_timezone);
        free(network->dhcp_server_dns);
        free(network->dhcp_server_ntp);
        free(network->dhcp_server_sip);

        set_free_free(network->dnssec_negative_trust_anchors);

        ordered_hashmap_free(network->dhcp_send_options);
        ordered_hashmap_free(network->dhcp_server_raw_options);

        return mfree(network);
}
