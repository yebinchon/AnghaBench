
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int manager; int dhcp_lease; TYPE_1__* network; } ;
struct TYPE_6__ {char* dhcp_hostname; int dhcp_use_hostname; } ;
typedef TYPE_2__ Link ;


 int assert (TYPE_2__*) ;
 int log_link_error_errno (TYPE_2__*,int,char*) ;
 int manager_set_hostname (int ,int *) ;
 int sd_dhcp_lease_get_hostname (int ,char const**) ;

__attribute__((used)) static int dhcp_reset_hostname(Link *link) {
        const char *hostname;
        int r;

        assert(link);

        if (!link->network->dhcp_use_hostname)
                return 0;

        hostname = link->network->dhcp_hostname;
        if (!hostname)
                (void) sd_dhcp_lease_get_hostname(link->dhcp_lease, &hostname);

        if (!hostname)
                return 0;


        r = manager_set_hostname(link->manager, ((void*)0));
        if (r < 0)
                return log_link_error_errno(link, r, "DHCP error: Failed to reset transient hostname: %m");

        return 0;
}
