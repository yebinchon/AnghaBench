
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int network; void* slaves; int bound_by_links; int bound_to_links; int sd_device; int state_file; int ssid; int kind; int ifname; int lldp_file; int lease_file; int * pool_addresses; void* addresses_foreign; void* addresses; void* neighbors_foreign; void* neighbors; void* nexthops_foreign; void* nexthops; void* routes_foreign; void* routes; } ;
typedef TYPE_1__ Link ;
typedef int Address ;


 int LIST_REMOVE (int ,int *,int *) ;
 int address_free (int *) ;
 int addresses ;
 int assert (TYPE_1__*) ;
 int free (int ) ;
 int hashmap_free (int ) ;
 int link_dns_settings_clear (TYPE_1__*) ;
 int link_free_engines (TYPE_1__*) ;
 int link_lldp_emit_stop (TYPE_1__*) ;
 int link_ntp_settings_clear (TYPE_1__*) ;
 int link_unref (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int neighbor_free (int *) ;
 int network_unref (int ) ;
 int nexthop_free (int *) ;
 int route_free (int *) ;
 int sd_device_unref (int ) ;
 void* set_free_with_destructor (void*,int (*) (int *)) ;
 int unlink (int ) ;

__attribute__((used)) static Link *link_free(Link *link) {
        Address *address;

        assert(link);

        link_ntp_settings_clear(link);
        link_dns_settings_clear(link);

        link->routes = set_free_with_destructor(link->routes, route_free);
        link->routes_foreign = set_free_with_destructor(link->routes_foreign, route_free);

        link->nexthops = set_free_with_destructor(link->nexthops, nexthop_free);
        link->nexthops_foreign = set_free_with_destructor(link->nexthops_foreign, nexthop_free);

        link->neighbors = set_free_with_destructor(link->neighbors, neighbor_free);
        link->neighbors_foreign = set_free_with_destructor(link->neighbors_foreign, neighbor_free);

        link->addresses = set_free_with_destructor(link->addresses, address_free);
        link->addresses_foreign = set_free_with_destructor(link->addresses_foreign, address_free);

        while ((address = link->pool_addresses)) {
                LIST_REMOVE(addresses, link->pool_addresses, address);
                address_free(address);
        }

        link_lldp_emit_stop(link);
        link_free_engines(link);
        free(link->lease_file);
        free(link->lldp_file);

        free(link->ifname);
        free(link->kind);
        free(link->ssid);

        (void) unlink(link->state_file);
        free(link->state_file);

        sd_device_unref(link->sd_device);

        hashmap_free(link->bound_to_links);
        hashmap_free(link->bound_by_links);

        set_free_with_destructor(link->slaves, link_unref);

        network_unref(link->network);

        return mfree(link);
}
