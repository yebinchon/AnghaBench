
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int cpu_accounting; int tasks_accounting; int memory_accounting; } ;
struct TYPE_5__ {TYPE_1__ cgroup_context; } ;
typedef TYPE_2__ Slice ;
typedef int Manager ;


 scalar_t__ MANAGER_IS_SYSTEM (int *) ;
 TYPE_2__* SLICE (int *) ;
 int SPECIAL_ROOT_SLICE ;
 int SPECIAL_SYSTEM_SLICE ;
 int assert (int *) ;
 scalar_t__ manager_owns_host_root_cgroup (int *) ;
 int slice_make_perpetual (int *,int ,int **) ;

__attribute__((used)) static void slice_enumerate_perpetual(Manager *m) {
        Unit *u;
        int r;

        assert(m);

        r = slice_make_perpetual(m, SPECIAL_ROOT_SLICE, &u);
        if (r >= 0 && manager_owns_host_root_cgroup(m)) {
                Slice *s = SLICE(u);





                s->cgroup_context.cpu_accounting = 1;
                s->cgroup_context.tasks_accounting = 1;
                s->cgroup_context.memory_accounting = 1;
        }

        if (MANAGER_IS_SYSTEM(m))
                (void) slice_make_perpetual(m, SPECIAL_SYSTEM_SLICE, ((void*)0));
}
