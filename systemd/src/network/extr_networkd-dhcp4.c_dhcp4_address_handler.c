
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_10__ {scalar_t__ dhcp4_messages; int dhcp4_configured; int manager; int state; } ;
typedef TYPE_1__ Link ;


 int EEXIST ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;
 int assert (TYPE_1__*) ;
 int dhcp4_release_old_lease (TYPE_1__*) ;
 int link_check_ready (TYPE_1__*) ;
 int link_enter_failed (TYPE_1__*) ;
 int link_request_set_routes (TYPE_1__*) ;
 int link_set_dhcp_routes (TYPE_1__*) ;
 int log_link_error_errno (TYPE_1__*,int,char*) ;
 int manager_rtnl_process_address (int *,int *,int ) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int dhcp4_address_handler(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        assert(link);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = sd_netlink_message_get_errno(m);
        if (r < 0 && r != -EEXIST) {
                log_link_error_errno(link, r, "Could not set DHCPv4 address: %m");
                link_enter_failed(link);
                return 1;
        } else if (r >= 0)
                (void) manager_rtnl_process_address(rtnl, m, link->manager);

        r = link_set_dhcp_routes(link);
        if (r < 0) {
                link_enter_failed(link);
                return 1;
        }


        r = link_request_set_routes(link);
        if (r < 0) {
                link_enter_failed(link);
                return 1;
        }

        if (link->dhcp4_messages == 0) {
                link->dhcp4_configured = 1;


                dhcp4_release_old_lease(link);
                link_check_ready(link);
        }

        return 1;
}
