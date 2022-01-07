
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ifname; int state_file; int mdns_ipv6_scope; int mdns_ipv4_scope; int llmnr_ipv6_scope; int llmnr_ipv4_scope; int unicast_scope; int ifindex; TYPE_1__* manager; scalar_t__ addresses; } ;
struct TYPE_8__ {int links; } ;
typedef TYPE_2__ Link ;


 int INT_TO_PTR (int ) ;
 int dns_scope_announce (int ,int) ;
 int dns_scope_free (int ) ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 int link_address_free (scalar_t__) ;
 int link_flush_settings (TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;

Link *link_free(Link *l) {
        if (!l)
                return ((void*)0);


        dns_scope_announce(l->mdns_ipv4_scope, 1);
        dns_scope_announce(l->mdns_ipv6_scope, 1);

        link_flush_settings(l);

        while (l->addresses)
                (void) link_address_free(l->addresses);

        if (l->manager)
                hashmap_remove(l->manager->links, INT_TO_PTR(l->ifindex));

        dns_scope_free(l->unicast_scope);
        dns_scope_free(l->llmnr_ipv4_scope);
        dns_scope_free(l->llmnr_ipv6_scope);
        dns_scope_free(l->mdns_ipv4_scope);
        dns_scope_free(l->mdns_ipv6_scope);

        free(l->state_file);
        free(l->ifname);

        return mfree(l);
}
