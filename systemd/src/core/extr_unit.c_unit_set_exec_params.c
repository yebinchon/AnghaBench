
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; int cgroup_path; TYPE_6__* manager; int prefix; int cgroup_supported; int confirm_spawn; int environment; } ;
typedef TYPE_1__ Unit ;
struct TYPE_11__ {int prefix; int cgroup_supported; } ;
typedef TYPE_1__ ExecParameters ;


 int EXEC_CGROUP_DELEGATE ;
 int EXEC_CHOWN_DIRECTORIES ;
 int EXEC_PASS_LOG_UNIT ;
 int MANAGER_IS_SYSTEM (TYPE_6__*) ;
 int SET_FLAG (int ,int,int ) ;
 int assert (TYPE_1__*) ;
 int manager_get_confirm_spawn (TYPE_6__*) ;
 int manager_get_effective_environment (TYPE_6__*,int *) ;
 int unit_cgroup_delegate (TYPE_1__*) ;

int unit_set_exec_params(Unit *u, ExecParameters *p) {
        int r;

        assert(u);
        assert(p);


        r = manager_get_effective_environment(u->manager, &p->environment);
        if (r < 0)
                return r;

        p->confirm_spawn = manager_get_confirm_spawn(u->manager);
        p->cgroup_supported = u->manager->cgroup_supported;
        p->prefix = u->manager->prefix;
        SET_FLAG(p->flags, EXEC_PASS_LOG_UNIT|EXEC_CHOWN_DIRECTORIES, MANAGER_IS_SYSTEM(u->manager));


        p->cgroup_path = u->cgroup_path;
        SET_FLAG(p->flags, EXEC_CGROUP_DELEGATE, unit_cgroup_delegate(u));

        return 0;
}
