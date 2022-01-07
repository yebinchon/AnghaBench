
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cgroup_path; } ;
typedef TYPE_1__ Unit ;


 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_1__*) ;
 int cg_kill_recursive (int ,int ,int ,int ,int *,int ,TYPE_1__*) ;
 int log_leftover ;
 int unit_pick_cgroup_path (TYPE_1__*) ;

int unit_warn_leftover_processes(Unit *u) {
        assert(u);

        (void) unit_pick_cgroup_path(u);

        if (!u->cgroup_path)
                return 0;

        return cg_kill_recursive(SYSTEMD_CGROUP_CONTROLLER, u->cgroup_path, 0, 0, ((void*)0), log_leftover, u);
}
