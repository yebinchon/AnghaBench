
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dirty_links; struct TYPE_5__* manager; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int link_unref (int ) ;
 int set_remove (int ,TYPE_1__*) ;

void link_clean(Link *link) {
        assert(link);
        assert(link->manager);

        link_unref(set_remove(link->manager->dirty_links, link));
}
