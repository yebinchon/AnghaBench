
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct in_addr {int s_addr; } ;
typedef int sd_dhcp_lease ;
struct TYPE_9__ {struct in_addr in; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {TYPE_1__ in; } ;
struct TYPE_10__ {int table; int protocol; int scope; TYPE_3__ prefsrc; int dst_prefixlen; TYPE_2__ dst; int family; } ;
typedef TYPE_4__ Route ;


 int AF_INET ;
 int RTPROT_DHCP ;
 int RT_SCOPE_LINK ;
 int in4_addr_netmask_to_prefixlen (struct in_addr*) ;
 int route_new (TYPE_4__**) ;
 int sd_dhcp_lease_get_netmask (int *,struct in_addr*) ;

__attribute__((used)) static int dhcp_prefix_route_from_lease(
                const sd_dhcp_lease *lease,
                uint32_t table,
                const struct in_addr *address,
                Route **ret_route) {

        Route *route;
        struct in_addr netmask;
        int r;

        r = sd_dhcp_lease_get_netmask((sd_dhcp_lease*) lease, &netmask);
        if (r < 0)
                return r;

        r = route_new(&route);
        if (r < 0)
                return r;

        route->family = AF_INET;
        route->dst.in.s_addr = address->s_addr & netmask.s_addr;
        route->dst_prefixlen = in4_addr_netmask_to_prefixlen(&netmask);
        route->prefsrc.in = *address;
        route->scope = RT_SCOPE_LINK;
        route->protocol = RTPROT_DHCP;
        route->table = table;
        *ret_route = route;
        return 0;
}
