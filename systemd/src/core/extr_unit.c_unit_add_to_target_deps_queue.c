
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int in_target_deps_queue; TYPE_2__* manager; } ;
typedef TYPE_1__ Unit ;
struct TYPE_7__ {int target_deps_queue; } ;
typedef TYPE_2__ Manager ;


 int LIST_PREPEND (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int target_deps_queue ;

void unit_add_to_target_deps_queue(Unit *u) {
        Manager *m = u->manager;

        assert(u);

        if (u->in_target_deps_queue)
                return;

        LIST_PREPEND(target_deps_queue, m->target_deps_queue, u);
        u->in_target_deps_queue = 1;
}
