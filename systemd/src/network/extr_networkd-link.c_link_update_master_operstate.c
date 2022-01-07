
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int manager; } ;
struct TYPE_7__ {int ifindex; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_2__ Link ;


 scalar_t__ link_get (int ,int ,TYPE_2__**) ;
 int link_update_operstate (TYPE_2__*,int) ;

__attribute__((used)) static void link_update_master_operstate(Link *link, NetDev *netdev) {
        Link *master;

        if (!netdev)
                return;

        if (link_get(link->manager, netdev->ifindex, &master) < 0)
                return;

        link_update_operstate(master, 1);
}
