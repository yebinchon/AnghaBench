
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirty; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;

void manager_dirty(Manager *manager) {
        assert(manager);


        manager->dirty = 1;
}
