
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_15__ {scalar_t__ dhcp6_client; } ;
struct TYPE_14__ {struct TYPE_14__* dynamic_hostname; struct TYPE_14__* dynamic_timezone; int bus; int polkit_registry; int device_monitor; int event; int speed_meter_event_source; int resolve; int genl; int rtnl; void* rules_saved; void* rules_foreign; void* rules; int * address_pools; void* netdevs; int networks; int duids_requesting_uuid; void* links; void* links_requesting_uuid; void* dirty_links; int dhcp6_prefixes; struct TYPE_14__* state_file; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Link ;
typedef int AddressPool ;


 int address_pool_free (int *) ;
 int bus_verify_polkit_async_registry_free (int ) ;
 int dhcp6_lease_pd_prefix_lost (scalar_t__,TYPE_2__*) ;
 int dhcp6_prefix_remove (TYPE_1__*,struct in6_addr*) ;
 int free (TYPE_1__*) ;
 struct in6_addr* hashmap_first_key (int ) ;
 int hashmap_free (int ) ;
 void* hashmap_free_with_destructor (void*,int (*) (TYPE_2__*)) ;
 TYPE_2__* hashmap_steal_first (void*) ;
 int link_stop_clients (TYPE_2__*,int) ;
 int link_unref (TYPE_2__*) ;
 int netdev_unref (TYPE_2__*) ;
 int network_unref ;
 int ordered_hashmap_free_with_destructor (int ,int ) ;
 int routing_policy_rule_free (TYPE_2__*) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_device_monitor_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int sd_netlink_unref (int ) ;
 int sd_resolve_unref (int ) ;
 int set_free (int ) ;
 void* set_free_with_destructor (void*,int (*) (TYPE_2__*)) ;

void manager_free(Manager *m) {
        struct in6_addr *a;
        AddressPool *pool;
        Link *link;

        if (!m)
                return;

        free(m->state_file);

        while ((a = hashmap_first_key(m->dhcp6_prefixes)))
                (void) dhcp6_prefix_remove(m, a);
        m->dhcp6_prefixes = hashmap_free(m->dhcp6_prefixes);

        while ((link = hashmap_steal_first(m->links))) {
                if (link->dhcp6_client)
                        (void) dhcp6_lease_pd_prefix_lost(link->dhcp6_client, link);

                (void) link_stop_clients(link, 1);

                link_unref(link);
        }

        m->dirty_links = set_free_with_destructor(m->dirty_links, link_unref);
        m->links_requesting_uuid = set_free_with_destructor(m->links_requesting_uuid, link_unref);
        m->links = hashmap_free_with_destructor(m->links, link_unref);

        m->duids_requesting_uuid = set_free(m->duids_requesting_uuid);
        m->networks = ordered_hashmap_free_with_destructor(m->networks, network_unref);

        m->netdevs = hashmap_free_with_destructor(m->netdevs, netdev_unref);

        while ((pool = m->address_pools))
                address_pool_free(pool);



        m->rules = set_free_with_destructor(m->rules, routing_policy_rule_free);
        m->rules_foreign = set_free_with_destructor(m->rules_foreign, routing_policy_rule_free);
        set_free_with_destructor(m->rules_saved, routing_policy_rule_free);

        sd_netlink_unref(m->rtnl);
        sd_netlink_unref(m->genl);
        sd_resolve_unref(m->resolve);

        sd_event_source_unref(m->speed_meter_event_source);
        sd_event_unref(m->event);

        sd_device_monitor_unref(m->device_monitor);

        bus_verify_polkit_async_registry_free(m->polkit_registry);
        sd_bus_flush_close_unref(m->bus);

        free(m->dynamic_timezone);
        free(m->dynamic_hostname);

        free(m);
}
