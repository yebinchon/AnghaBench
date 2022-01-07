
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_5__ {int name; struct TYPE_5__* tunnel; } ;
typedef int NetDev ;
typedef TYPE_1__ L2tpSession ;


 int EEXIST ;
 int * NETDEV (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_netdev_debug (int *,char*,int ) ;
 int log_netdev_info (int *,char*,int ) ;
 int log_netdev_warning_errno (int *,int,char*,int ) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int l2tp_create_session_handler(sd_netlink *rtnl, sd_netlink_message *m, L2tpSession *session) {
        NetDev *netdev;
        int r;

        assert(session);
        assert(session->tunnel);

        netdev = NETDEV(session->tunnel);

        r = sd_netlink_message_get_errno(m);
        if (r == -EEXIST)
                log_netdev_info(netdev, "L2TP session %s exists, using existing without changing its parameters",
                                session->name);
        else if (r < 0) {
                log_netdev_warning_errno(netdev, r, "L2TP session %s could not be created: %m", session->name);
                return 1;
        }

        log_netdev_debug(netdev, "L2TP session %s created", session->name);
        return 1;
}
