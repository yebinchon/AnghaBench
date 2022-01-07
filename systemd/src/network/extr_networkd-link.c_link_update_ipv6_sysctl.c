
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int ifname; } ;
typedef TYPE_1__ Link ;


 int AF_INET6 ;
 int IFF_LOOPBACK ;
 int link_ipv6_enabled (TYPE_1__*) ;
 int log_link_info (TYPE_1__*,char*) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sysctl_write_ip_property_boolean (int ,int ,char*,int) ;

__attribute__((used)) static int link_update_ipv6_sysctl(Link *link) {
        bool enabled;
        int r;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        enabled = link_ipv6_enabled(link);
        if (enabled) {
                r = sysctl_write_ip_property_boolean(AF_INET6, link->ifname, "disable_ipv6", 0);
                if (r < 0)
                        return log_link_warning_errno(link, r, "Cannot enable IPv6: %m");

                log_link_info(link, "IPv6 successfully enabled");
        }

        return 0;
}
