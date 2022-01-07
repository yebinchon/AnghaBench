
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ family; scalar_t__ mdns_ptr_rr; scalar_t__ mdns_address_rr; scalar_t__ llmnr_ptr_rr; scalar_t__ llmnr_address_rr; TYPE_5__* link; } ;
struct TYPE_16__ {scalar_t__ n_addresses; TYPE_4__* mdns_ipv6_scope; TYPE_3__* mdns_ipv4_scope; TYPE_2__* llmnr_ipv6_scope; TYPE_1__* llmnr_ipv4_scope; int addresses; } ;
struct TYPE_15__ {int zone; } ;
struct TYPE_14__ {int zone; } ;
struct TYPE_13__ {int zone; } ;
struct TYPE_12__ {int zone; } ;
typedef TYPE_6__ LinkAddress ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int LIST_REMOVE (int ,int ,TYPE_6__*) ;
 int addresses ;
 int assert (int) ;
 int dns_resource_record_unref (scalar_t__) ;
 int dns_zone_remove_rr (int *,scalar_t__) ;
 TYPE_6__* mfree (TYPE_6__*) ;

LinkAddress *link_address_free(LinkAddress *a) {
        if (!a)
                return ((void*)0);

        if (a->link) {
                LIST_REMOVE(addresses, a->link->addresses, a);

                assert(a->link->n_addresses > 0);
                a->link->n_addresses--;

                if (a->llmnr_address_rr) {
                        if (a->family == AF_INET && a->link->llmnr_ipv4_scope)
                                dns_zone_remove_rr(&a->link->llmnr_ipv4_scope->zone, a->llmnr_address_rr);
                        else if (a->family == AF_INET6 && a->link->llmnr_ipv6_scope)
                                dns_zone_remove_rr(&a->link->llmnr_ipv6_scope->zone, a->llmnr_address_rr);
                }

                if (a->llmnr_ptr_rr) {
                        if (a->family == AF_INET && a->link->llmnr_ipv4_scope)
                                dns_zone_remove_rr(&a->link->llmnr_ipv4_scope->zone, a->llmnr_ptr_rr);
                        else if (a->family == AF_INET6 && a->link->llmnr_ipv6_scope)
                                dns_zone_remove_rr(&a->link->llmnr_ipv6_scope->zone, a->llmnr_ptr_rr);
                }

                if (a->mdns_address_rr) {
                        if (a->family == AF_INET && a->link->mdns_ipv4_scope)
                                dns_zone_remove_rr(&a->link->mdns_ipv4_scope->zone, a->mdns_address_rr);
                        else if (a->family == AF_INET6 && a->link->mdns_ipv6_scope)
                                dns_zone_remove_rr(&a->link->mdns_ipv6_scope->zone, a->mdns_address_rr);
                }

                if (a->mdns_ptr_rr) {
                        if (a->family == AF_INET && a->link->mdns_ipv4_scope)
                                dns_zone_remove_rr(&a->link->mdns_ipv4_scope->zone, a->mdns_ptr_rr);
                        else if (a->family == AF_INET6 && a->link->mdns_ipv6_scope)
                                dns_zone_remove_rr(&a->link->mdns_ipv6_scope->zone, a->mdns_ptr_rr);
                }
        }

        dns_resource_record_unref(a->llmnr_address_rr);
        dns_resource_record_unref(a->llmnr_ptr_rr);
        dns_resource_record_unref(a->mdns_address_rr);
        dns_resource_record_unref(a->mdns_ptr_rr);

        return mfree(a);
}
