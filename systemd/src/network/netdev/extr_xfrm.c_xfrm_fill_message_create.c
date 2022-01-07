
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_netlink_message ;
struct TYPE_5__ {int if_id; scalar_t__ independent; } ;
typedef TYPE_1__ Xfrm ;
struct TYPE_6__ {int ifindex; } ;
typedef int NetDev ;
typedef TYPE_2__ Link ;


 int IFLA_XFRM_IF_ID ;
 int IFLA_XFRM_LINK ;
 int LOOPBACK_IFINDEX ;
 TYPE_1__* XFRM (int *) ;
 int assert (int) ;
 int log_netdev_error_errno (int *,int,char*) ;
 int sd_netlink_message_append_u32 (int *,int ,int ) ;

__attribute__((used)) static int xfrm_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *message) {
        Xfrm *x;
        int r;

        assert(netdev);
        assert(message);

        x = XFRM(netdev);

        assert(link || x->independent);

        r = sd_netlink_message_append_u32(message, IFLA_XFRM_LINK, link ? link->ifindex : LOOPBACK_IFINDEX);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_XFRM_LINK: %m");

        r = sd_netlink_message_append_u32(message, IFLA_XFRM_IF_ID, x->if_id);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_XFRM_IF_ID: %m");

        return 0;
}
