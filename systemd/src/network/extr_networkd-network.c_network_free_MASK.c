#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dhcp_server_raw_options; int /*<<< orphan*/  dhcp_send_options; int /*<<< orphan*/  dnssec_negative_trust_anchors; int /*<<< orphan*/  dhcp_server_sip; int /*<<< orphan*/  dhcp_server_ntp; int /*<<< orphan*/  dhcp_server_dns; int /*<<< orphan*/  dhcp_server_timezone; int /*<<< orphan*/  name; int /*<<< orphan*/  duid; TYPE_1__* manager; int /*<<< orphan*/  qdiscs_by_section; int /*<<< orphan*/  rules_by_section; int /*<<< orphan*/  route_prefixes_by_section; int /*<<< orphan*/  prefixes_by_section; int /*<<< orphan*/  address_labels_by_section; int /*<<< orphan*/  neighbors_by_section; int /*<<< orphan*/  fdb_entries_by_section; int /*<<< orphan*/  nexthops_by_section; int /*<<< orphan*/  routes_by_section; int /*<<< orphan*/  addresses_by_section; int /*<<< orphan*/ * rules; int /*<<< orphan*/ * static_route_prefixes; int /*<<< orphan*/ * static_prefixes; int /*<<< orphan*/ * address_labels; int /*<<< orphan*/ * neighbors; int /*<<< orphan*/ * ipv6_proxy_ndp_addresses; int /*<<< orphan*/ * static_fdb_entries; int /*<<< orphan*/ * static_addresses; int /*<<< orphan*/ * static_nexthops; int /*<<< orphan*/ * static_routes; int /*<<< orphan*/  stacked_netdevs; int /*<<< orphan*/  vrf; int /*<<< orphan*/  bond; int /*<<< orphan*/  bridge; int /*<<< orphan*/  stacked_netdev_names; int /*<<< orphan*/  vrf_name; int /*<<< orphan*/  bond_name; int /*<<< orphan*/  bridge_name; int /*<<< orphan*/  ndisc_black_listed_prefix; int /*<<< orphan*/  router_dns; int /*<<< orphan*/  router_search_domains; int /*<<< orphan*/  bind_carrier; int /*<<< orphan*/  route_domains; int /*<<< orphan*/  search_domains; int /*<<< orphan*/  sip; int /*<<< orphan*/  dns; int /*<<< orphan*/  ntp; int /*<<< orphan*/  mac; int /*<<< orphan*/  dhcp_request_options; int /*<<< orphan*/  dhcp_black_listed_ip; int /*<<< orphan*/  dhcp_hostname; int /*<<< orphan*/  dhcp_user_class; int /*<<< orphan*/  dhcp_vendor_class_identifier; int /*<<< orphan*/  description; int /*<<< orphan*/  conditions; int /*<<< orphan*/  match_bssid; int /*<<< orphan*/  match_ssid; int /*<<< orphan*/  match_wlan_iftype; int /*<<< orphan*/  match_property; int /*<<< orphan*/  match_name; int /*<<< orphan*/  match_type; int /*<<< orphan*/  match_driver; int /*<<< orphan*/  match_path; int /*<<< orphan*/  match_mac; int /*<<< orphan*/  filename; } ;
struct TYPE_7__ {scalar_t__ duids_requesting_uuid; } ;
typedef  int /*<<< orphan*/  RoutingPolicyRule ;
typedef  int /*<<< orphan*/  RoutePrefix ;
typedef  int /*<<< orphan*/  Route ;
typedef  int /*<<< orphan*/  Prefix ;
typedef  int /*<<< orphan*/  NextHop ;
typedef  TYPE_2__ Network ;
typedef  int /*<<< orphan*/  Neighbor ;
typedef  int /*<<< orphan*/  IPv6ProxyNDPAddress ;
typedef  int /*<<< orphan*/  FdbEntry ;
typedef  int /*<<< orphan*/  AddressLabel ;
typedef  int /*<<< orphan*/  Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qdisc_free ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Network *FUNC24(Network *network) {
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
                return NULL;

        FUNC4(network->filename);

        FUNC21(network->match_mac);
        FUNC23(network->match_path);
        FUNC23(network->match_driver);
        FUNC23(network->match_type);
        FUNC23(network->match_name);
        FUNC23(network->match_property);
        FUNC23(network->match_wlan_iftype);
        FUNC23(network->match_ssid);
        FUNC21(network->match_bssid);
        FUNC2(network->conditions);

        FUNC4(network->description);
        FUNC4(network->dhcp_vendor_class_identifier);
        FUNC23(network->dhcp_user_class);
        FUNC4(network->dhcp_hostname);
        FUNC20(network->dhcp_black_listed_ip);
        FUNC20(network->dhcp_request_options);
        FUNC4(network->mac);

        FUNC23(network->ntp);
        FUNC4(network->dns);
        FUNC23(network->sip);
        FUNC15(network->search_domains);
        FUNC15(network->route_domains);
        FUNC23(network->bind_carrier);

        FUNC15(network->router_search_domains);
        FUNC4(network->router_dns);
        FUNC21(network->ndisc_black_listed_prefix);

        FUNC4(network->bridge_name);
        FUNC4(network->bond_name);
        FUNC4(network->vrf_name);
        FUNC6(network->stacked_netdev_names);
        FUNC11(network->bridge);
        FUNC11(network->bond);
        FUNC11(network->vrf);
        FUNC7(network->stacked_netdevs, netdev_unref);

        while ((route = network->static_routes))
                FUNC17(route);

        while ((nexthop = network->static_nexthops))
                FUNC12(nexthop);

        while ((address = network->static_addresses))
                FUNC0(address);

        while ((fdb_entry = network->static_fdb_entries))
                FUNC3(fdb_entry);

        while ((ipv6_proxy_ndp_address = network->ipv6_proxy_ndp_addresses))
                FUNC8(ipv6_proxy_ndp_address);

        while ((neighbor = network->neighbors))
                FUNC10(neighbor);

        while ((label = network->address_labels))
                FUNC1(label);

        while ((prefix = network->static_prefixes))
                FUNC16(prefix);

        while ((route_prefix = network->static_route_prefixes))
                FUNC18(route_prefix);

        while ((rule = network->rules))
                FUNC19(rule);

        FUNC5(network->addresses_by_section);
        FUNC5(network->routes_by_section);
        FUNC5(network->nexthops_by_section);
        FUNC5(network->fdb_entries_by_section);
        FUNC5(network->neighbors_by_section);
        FUNC5(network->address_labels_by_section);
        FUNC5(network->prefixes_by_section);
        FUNC5(network->route_prefixes_by_section);
        FUNC5(network->rules_by_section);
        FUNC14(network->qdiscs_by_section, qdisc_free);

        if (network->manager &&
            network->manager->duids_requesting_uuid)
                FUNC22(network->manager->duids_requesting_uuid, &network->duid);

        FUNC4(network->name);

        FUNC4(network->dhcp_server_timezone);
        FUNC4(network->dhcp_server_dns);
        FUNC4(network->dhcp_server_ntp);
        FUNC4(network->dhcp_server_sip);

        FUNC21(network->dnssec_negative_trust_anchors);

        FUNC13(network->dhcp_send_options);
        FUNC13(network->dhcp_server_raw_options);

        return FUNC9(network);
}