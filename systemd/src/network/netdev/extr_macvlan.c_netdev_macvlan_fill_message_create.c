
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int sd_netlink_message ;
struct TYPE_12__ {scalar_t__ kind; scalar_t__ mode; struct TYPE_12__* ifname; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ MacVlan ;
typedef TYPE_1__ Link ;


 int IFLA_MACVLAN_MODE ;
 TYPE_1__* MACVLAN (TYPE_1__*) ;
 TYPE_1__* MACVTAP (TYPE_1__*) ;
 scalar_t__ NETDEV_KIND_MACVLAN ;
 scalar_t__ _NETDEV_MACVLAN_MODE_INVALID ;
 int assert (TYPE_1__*) ;
 int log_netdev_error_errno (TYPE_1__*,int,char*) ;
 int sd_netlink_message_append_u32 (int *,int ,scalar_t__) ;

__attribute__((used)) static int netdev_macvlan_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *req) {
        MacVlan *m;
        int r;

        assert(netdev);
        assert(link);
        assert(netdev->ifname);

        if (netdev->kind == NETDEV_KIND_MACVLAN)
                m = MACVLAN(netdev);
        else
                m = MACVTAP(netdev);

        assert(m);

        if (m->mode != _NETDEV_MACVLAN_MODE_INVALID) {
                r = sd_netlink_message_append_u32(req, IFLA_MACVLAN_MODE, m->mode);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_MACVLAN_MODE attribute: %m");
        }

        return 0;
}
