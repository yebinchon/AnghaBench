
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ifname; TYPE_1__* manager; } ;
struct TYPE_5__ {int netdevs; } ;
typedef TYPE_2__ NetDev ;


 TYPE_2__* hashmap_get (int ,int ) ;

bool netdev_is_managed(NetDev *netdev) {
        if (!netdev || !netdev->manager || !netdev->ifname)
                return 0;

        return hashmap_get(netdev->manager->netdevs, netdev->ifname) == netdev;
}
