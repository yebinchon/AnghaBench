
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int slaves; int manager; } ;
struct TYPE_8__ {int ifindex; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_2__ Link ;


 int assert (TYPE_2__*) ;
 scalar_t__ link_get (int ,int ,TYPE_2__**) ;
 int link_unref (int ) ;
 int set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void link_drop_from_master(Link *link, NetDev *netdev) {
        Link *master;

        assert(link);

        if (!link->manager || !netdev)
                return;

        if (link_get(link->manager, netdev->ifindex, &master) < 0)
                return;

        link_unref(set_remove(master->slaves, link));
}
