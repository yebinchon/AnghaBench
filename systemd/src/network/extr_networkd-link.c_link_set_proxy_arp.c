
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* network; int ifname; } ;
struct TYPE_6__ {scalar_t__ proxy_arp; } ;
typedef TYPE_2__ Link ;


 int AF_INET ;
 int link_proxy_arp_enabled (TYPE_2__*) ;
 int log_link_warning_errno (TYPE_2__*,int,char*) ;
 int sysctl_write_ip_property_boolean (int ,int ,char*,int) ;

__attribute__((used)) static int link_set_proxy_arp(Link *link) {
        int r;

        if (!link_proxy_arp_enabled(link))
                return 0;

        r = sysctl_write_ip_property_boolean(AF_INET, link->ifname, "proxy_arp", link->network->proxy_arp > 0);
        if (r < 0)
                log_link_warning_errno(link, r, "Cannot configure proxy ARP for interface: %m");

        return 0;
}
