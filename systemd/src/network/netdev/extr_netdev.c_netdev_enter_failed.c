
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ NetDev ;


 int NETDEV_STATE_FAILED ;
 int netdev_callbacks_clear (TYPE_1__*) ;

__attribute__((used)) static int netdev_enter_failed(NetDev *netdev) {
        netdev->state = NETDEV_STATE_FAILED;

        netdev_callbacks_clear(netdev);

        return 0;
}
