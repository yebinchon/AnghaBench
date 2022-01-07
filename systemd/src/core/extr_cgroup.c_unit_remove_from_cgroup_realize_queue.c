
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_cgroup_realize_queue; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_6__ {int cgroup_realize_queue; } ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int cgroup_realize_queue ;

__attribute__((used)) static void unit_remove_from_cgroup_realize_queue(Unit *u) {
        assert(u);

        if (!u->in_cgroup_realize_queue)
                return;

        LIST_REMOVE(cgroup_realize_queue, u->manager->cgroup_realize_queue, u);
        u->in_cgroup_realize_queue = 0;
}
