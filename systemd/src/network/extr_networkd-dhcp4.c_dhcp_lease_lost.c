
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_19__ {int dhcp4_configured; struct TYPE_19__* dhcp_lease; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int dhcp_remove_address (TYPE_1__*,TYPE_1__*,struct in_addr*,int *) ;
 int dhcp_remove_dns_routes (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int dhcp_remove_router (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int dhcp_remove_routes (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ;
 int dhcp_reset_hostname (TYPE_1__*) ;
 int dhcp_reset_mtu (TYPE_1__*) ;
 int link_dirty (TYPE_1__*) ;
 int log_link_info (TYPE_1__*,char*) ;
 int sd_dhcp_lease_get_address (TYPE_1__*,struct in_addr*) ;
 TYPE_1__* sd_dhcp_lease_unref (TYPE_1__*) ;

__attribute__((used)) static int dhcp_lease_lost(Link *link) {
        struct in_addr address = {};

        assert(link);
        assert(link->dhcp_lease);

        log_link_info(link, "DHCP lease lost");

        link->dhcp4_configured = 0;

        (void) sd_dhcp_lease_get_address(link->dhcp_lease, &address);
        (void) dhcp_remove_routes(link, link->dhcp_lease, &address, 1);
        (void) dhcp_remove_router(link, link->dhcp_lease, &address, 1);
        (void) dhcp_remove_dns_routes(link, link->dhcp_lease, &address, 1);
        (void) dhcp_remove_address(link, link->dhcp_lease, &address, ((void*)0));
        (void) dhcp_reset_mtu(link);
        (void) dhcp_reset_hostname(link);

        link->dhcp_lease = sd_dhcp_lease_unref(link->dhcp_lease);
        link_dirty(link);

        return 0;
}
