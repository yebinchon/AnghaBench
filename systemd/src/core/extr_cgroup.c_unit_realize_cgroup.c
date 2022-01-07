
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int manager; } ;
typedef TYPE_1__ Unit ;


 int UNIT_HAS_CGROUP_CONTEXT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int manager_state (int ) ;
 int unit_add_siblings_to_cgroup_realize_queue (TYPE_1__*) ;
 int unit_realize_cgroup_now (TYPE_1__*,int ) ;

int unit_realize_cgroup(Unit *u) {
        assert(u);

        if (!UNIT_HAS_CGROUP_CONTEXT(u))
                return 0;
        unit_add_siblings_to_cgroup_realize_queue(u);


        return unit_realize_cgroup_now(u, manager_state(u->manager));
}
