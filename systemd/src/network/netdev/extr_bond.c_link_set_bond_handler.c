
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; struct TYPE_8__* ifname; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef int sd_netlink ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;
 int assert (TYPE_1__*) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sd_netlink_message_get_errno (TYPE_1__*) ;

__attribute__((used)) static int link_set_bond_handler(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        assert(m);
        assert(link);
        assert(link->ifname);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = sd_netlink_message_get_errno(m);
        if (r < 0) {
                log_link_warning_errno(link, r, "Could not set bonding interface: %m");
                return 1;
        }

        return 1;
}
