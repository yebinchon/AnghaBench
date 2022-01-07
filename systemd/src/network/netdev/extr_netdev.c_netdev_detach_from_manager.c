
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ifname; TYPE_1__* manager; } ;
struct TYPE_4__ {int netdevs; } ;
typedef TYPE_2__ NetDev ;


 int hashmap_remove (int ,scalar_t__) ;

__attribute__((used)) static void netdev_detach_from_manager(NetDev *netdev) {
        if (netdev->ifname && netdev->manager)
                hashmap_remove(netdev->manager->netdevs, netdev->ifname);
}
