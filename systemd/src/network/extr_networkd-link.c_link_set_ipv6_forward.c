
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Link ;


 int AF_INET6 ;
 int link_ipv6_forward_enabled (int *) ;
 int log_link_warning_errno (int *,int,char*) ;
 int sysctl_write_ip_property (int ,char*,char*,char*) ;

__attribute__((used)) static int link_set_ipv6_forward(Link *link) {
        int r;

        if (!link_ipv6_forward_enabled(link))
                return 0;
        r = sysctl_write_ip_property(AF_INET6, "all", "forwarding", "1");
        if (r < 0)
                log_link_warning_errno(link, r, "Cannot configure IPv6 packet forwarding, ignoring: %m");

        return 0;
}
