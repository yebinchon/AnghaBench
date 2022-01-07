
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dirty_links; } ;
struct TYPE_7__ {TYPE_3__* manager; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int link_ref (TYPE_1__*) ;
 int manager_dirty (TYPE_3__*) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,TYPE_1__*) ;

void link_dirty(Link *link) {
        int r;

        assert(link);


        manager_dirty(link->manager);

        r = set_ensure_allocated(&link->manager->dirty_links, ((void*)0));
        if (r < 0)

                return;

        r = set_put(link->manager->dirty_links, link);
        if (r <= 0)

                return;

        link_ref(link);
}
