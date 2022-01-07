
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_6__ {int dhcp_client; int manager; int state; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;
 int assert (TYPE_1__*) ;
 int dhcp_lease_renew (int ,TYPE_1__*) ;
 int log_link_debug_errno (TYPE_1__*,int,char*) ;
 int manager_rtnl_process_address (int *,int *,int ) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int dhcp_remove_address_handler(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        assert(link);




        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = sd_netlink_message_get_errno(m);
        if (r < 0)
                log_link_debug_errno(link, r, "Failed to remove DHCPv4 address, ignoring: %m");
        else
                (void) manager_rtnl_process_address(rtnl, m, link->manager);

        (void) dhcp_lease_renew(link->dhcp_client, link);
        return 1;
}
