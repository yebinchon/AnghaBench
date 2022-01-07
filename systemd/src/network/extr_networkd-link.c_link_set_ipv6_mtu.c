
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* network; int ifname; } ;
struct TYPE_5__ {scalar_t__ ipv6_mtu; } ;
typedef TYPE_2__ Link ;


 int AF_INET6 ;
 int IFF_LOOPBACK ;
 int log_link_warning_errno (TYPE_2__*,int,char*) ;
 int socket_ipv6_is_supported () ;
 int sysctl_write_ip_property_uint32 (int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int link_set_ipv6_mtu(Link *link) {
        int r;


        if (!socket_ipv6_is_supported())
                return 0;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (link->network->ipv6_mtu == 0)
                return 0;

        r = sysctl_write_ip_property_uint32(AF_INET6, link->ifname, "mtu", link->network->ipv6_mtu);
        if (r < 0)
                log_link_warning_errno(link, r, "Cannot set IPv6 MTU for interface: %m");

        return 0;
}
