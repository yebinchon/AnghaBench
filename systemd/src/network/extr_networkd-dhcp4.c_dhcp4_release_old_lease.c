
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_16__ {struct TYPE_16__* dhcp_lease_old; struct TYPE_16__* dhcp_lease; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int dhcp_remove_address (TYPE_1__*,TYPE_1__*,struct in_addr*,int *) ;
 int dhcp_remove_dns_routes (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int dhcp_remove_router (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int dhcp_remove_routes (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int in4_addr_equal (struct in_addr*,struct in_addr*) ;
 int link_dirty (TYPE_1__*) ;
 int sd_dhcp_lease_get_address (TYPE_1__*,struct in_addr*) ;
 TYPE_1__* sd_dhcp_lease_unref (TYPE_1__*) ;

void dhcp4_release_old_lease(Link *link) {
        struct in_addr address = {}, address_old = {};

        assert(link);

        if (!link->dhcp_lease_old)
                return;

        assert(link->dhcp_lease);

        (void) sd_dhcp_lease_get_address(link->dhcp_lease_old, &address_old);
        (void) sd_dhcp_lease_get_address(link->dhcp_lease, &address);

        (void) dhcp_remove_routes(link, link->dhcp_lease_old, &address_old, 0);
        (void) dhcp_remove_router(link, link->dhcp_lease_old, &address_old, 0);
        (void) dhcp_remove_dns_routes(link, link->dhcp_lease_old, &address_old, 0);

        if (!in4_addr_equal(&address_old, &address))
                (void) dhcp_remove_address(link, link->dhcp_lease_old, &address_old, ((void*)0));

        link->dhcp_lease_old = sd_dhcp_lease_unref(link->dhcp_lease_old);
        link_dirty(link);
}
