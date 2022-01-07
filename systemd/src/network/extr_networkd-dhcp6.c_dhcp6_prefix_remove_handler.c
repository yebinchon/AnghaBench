
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;
 int assert (TYPE_1__*) ;
 int link_enter_failed (TYPE_1__*) ;
 int log_link_debug_errno (TYPE_1__*,int,char*) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int dhcp6_prefix_remove_handler(sd_netlink *nl, sd_netlink_message *m, Link *link) {
        int r;

        assert(link);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = sd_netlink_message_get_errno(m);
        if (r < 0) {
                log_link_debug_errno(link, r, "Received error on DHCPv6 Prefix Delegation route removal: %m");
                link_enter_failed(link);
                return 1;
        }

        return 1;
}
