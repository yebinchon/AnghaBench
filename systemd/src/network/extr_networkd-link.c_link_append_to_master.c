
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int slaves; int ifindex; int manager; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int link_get (int ,int ,TYPE_1__**) ;
 int link_ref (TYPE_1__*) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,TYPE_1__*) ;

__attribute__((used)) static int link_append_to_master(Link *link, NetDev *netdev) {
        Link *master;
        int r;

        assert(link);
        assert(netdev);

        r = link_get(link->manager, netdev->ifindex, &master);
        if (r < 0)
                return r;

        r = set_ensure_allocated(&master->slaves, ((void*)0));
        if (r < 0)
                return r;

        r = set_put(master->slaves, link);
        if (r <= 0)
                return r;

        link_ref(link);
        return 0;
}
