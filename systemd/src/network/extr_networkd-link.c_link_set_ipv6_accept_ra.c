
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int ifname; int network; } ;
typedef TYPE_1__ Link ;


 int AF_INET6 ;
 int IFF_LOOPBACK ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int socket_ipv6_is_supported () ;
 int sysctl_write_ip_property (int ,int ,char*,char*) ;

__attribute__((used)) static int link_set_ipv6_accept_ra(Link *link) {
        int r;


        if (!socket_ipv6_is_supported())
                return 0;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        r = sysctl_write_ip_property(AF_INET6, link->ifname, "accept_ra", "0");
        if (r < 0)
                log_link_warning_errno(link, r, "Cannot disable kernel IPv6 accept_ra for interface: %m");

        return 0;
}
