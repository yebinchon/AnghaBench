
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int id; TYPE_2__* in_cgroup_realize_queue; } ;
typedef TYPE_1__ Unit ;
struct TYPE_10__ {TYPE_1__* cgroup_realize_queue; } ;
typedef int ManagerState ;
typedef TYPE_2__ Manager ;


 scalar_t__ UNIT_IS_INACTIVE_OR_FAILED (int ) ;
 int assert (TYPE_2__*) ;
 int log_warning_errno (int,char*,int ) ;
 int manager_state (TYPE_2__*) ;
 int unit_active_state (TYPE_1__*) ;
 int unit_realize_cgroup_now (TYPE_1__*,int ) ;
 int unit_remove_from_cgroup_realize_queue (TYPE_1__*) ;

unsigned manager_dispatch_cgroup_realize_queue(Manager *m) {
        ManagerState state;
        unsigned n = 0;
        Unit *i;
        int r;

        assert(m);

        state = manager_state(m);

        while ((i = m->cgroup_realize_queue)) {
                assert(i->in_cgroup_realize_queue);

                if (UNIT_IS_INACTIVE_OR_FAILED(unit_active_state(i))) {

                        unit_remove_from_cgroup_realize_queue(i);
                        continue;
                }

                r = unit_realize_cgroup_now(i, state);
                if (r < 0)
                        log_warning_errno(r, "Failed to realize cgroups for queued unit %s, ignoring: %m", i->id);

                n++;
        }

        return n;
}
