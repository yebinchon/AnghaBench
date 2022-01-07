
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct ifla_vlan_flags {int flags; int mask; } ;
struct TYPE_14__ {int gvrp; int mvrp; int reorder_hdr; int loose_binding; int id; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ VLan ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ Link ;


 int IFLA_VLAN_FLAGS ;
 int IFLA_VLAN_ID ;
 int SET_FLAG (int ,int ,int) ;
 TYPE_1__* VLAN (TYPE_1__*) ;
 int VLAN_FLAG_GVRP ;
 int VLAN_FLAG_LOOSE_BINDING ;
 int VLAN_FLAG_MVRP ;
 int VLAN_FLAG_REORDER_HDR ;
 int assert (TYPE_1__*) ;
 int log_netdev_error_errno (TYPE_1__*,int,char*) ;
 int sd_netlink_message_append_data (TYPE_1__*,int ,struct ifla_vlan_flags*,int) ;
 int sd_netlink_message_append_u16 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int netdev_vlan_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *req) {
        struct ifla_vlan_flags flags = {};
        VLan *v;
        int r;

        assert(netdev);
        assert(link);
        assert(req);

        v = VLAN(netdev);

        assert(v);

        r = sd_netlink_message_append_u16(req, IFLA_VLAN_ID, v->id);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_VLAN_ID attribute: %m");

        if (v->gvrp != -1) {
                flags.mask |= VLAN_FLAG_GVRP;
                SET_FLAG(flags.flags, VLAN_FLAG_GVRP, v->gvrp);
        }

        if (v->mvrp != -1) {
                flags.mask |= VLAN_FLAG_MVRP;
                SET_FLAG(flags.flags, VLAN_FLAG_MVRP, v->mvrp);
        }

        if (v->reorder_hdr != -1) {
                flags.mask |= VLAN_FLAG_REORDER_HDR;
                SET_FLAG(flags.flags, VLAN_FLAG_REORDER_HDR, v->reorder_hdr);
        }

        if (v->loose_binding != -1) {
                flags.mask |= VLAN_FLAG_LOOSE_BINDING;
                SET_FLAG(flags.flags, VLAN_FLAG_LOOSE_BINDING, v->loose_binding);
        }

        r = sd_netlink_message_append_data(req, IFLA_VLAN_FLAGS, &flags, sizeof(struct ifla_vlan_flags));
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_VLAN_FLAGS attribute: %m");

        return 0;
}
