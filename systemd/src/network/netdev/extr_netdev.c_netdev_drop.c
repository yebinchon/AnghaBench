
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_1__ NetDev ;


 scalar_t__ NETDEV_STATE_LINGER ;
 int log_netdev_debug (TYPE_1__*,char*) ;
 int netdev_callbacks_clear (TYPE_1__*) ;
 int netdev_detach_from_manager (TYPE_1__*) ;
 int netdev_unref (TYPE_1__*) ;

void netdev_drop(NetDev *netdev) {
        if (!netdev || netdev->state == NETDEV_STATE_LINGER)
                return;

        netdev->state = NETDEV_STATE_LINGER;

        log_netdev_debug(netdev, "netdev removed");

        netdev_callbacks_clear(netdev);

        netdev_detach_from_manager(netdev);

        netdev_unref(netdev);

        return;
}
