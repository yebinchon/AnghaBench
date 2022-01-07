
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Link ;


 int AF_INET ;
 int link_ipv4_forward_enabled (int *) ;
 int log_link_warning_errno (int *,int,char*) ;
 int sysctl_write_ip_property (int ,int *,char*,char*) ;

__attribute__((used)) static int link_set_ipv4_forward(Link *link) {
        int r;

        if (!link_ipv4_forward_enabled(link))
                return 0;
        r = sysctl_write_ip_property(AF_INET, ((void*)0), "ip_forward", "1");
        if (r < 0)
                log_link_warning_errno(link, r, "Cannot turn on IPv4 packet forwarding, ignoring: %m");

        return 0;
}
