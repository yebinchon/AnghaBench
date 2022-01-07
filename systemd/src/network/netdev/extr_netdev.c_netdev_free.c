
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {scalar_t__ state; int conditions; int mac; int ifname; int description; int filename; } ;
struct TYPE_12__ {int (* done ) (TYPE_1__*) ;} ;
typedef TYPE_1__ NetDev ;


 TYPE_10__* NETDEV_VTABLE (TYPE_1__*) ;
 scalar_t__ _NETDEV_STATE_INVALID ;
 int assert (TYPE_1__*) ;
 int condition_free_list (int ) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int netdev_callbacks_clear (TYPE_1__*) ;
 int netdev_detach_from_manager (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static NetDev *netdev_free(NetDev *netdev) {
        assert(netdev);

        netdev_callbacks_clear(netdev);

        netdev_detach_from_manager(netdev);

        free(netdev->filename);

        free(netdev->description);
        free(netdev->ifname);
        free(netdev->mac);
        condition_free_list(netdev->conditions);
        if (netdev->state != _NETDEV_STATE_INVALID &&
            NETDEV_VTABLE(netdev) &&
            NETDEV_VTABLE(netdev)->done)
                NETDEV_VTABLE(netdev)->done(netdev);

        return mfree(netdev);
}
