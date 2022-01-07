
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cgroup_path; } ;
typedef TYPE_1__ Unit ;


 int ENOENT ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_1__*) ;
 int cg_unified_controller (int ) ;
 int unit_watch_pids_in_path (TYPE_1__*,int ) ;

int unit_watch_all_pids(Unit *u) {
        int r;

        assert(u);






        if (!u->cgroup_path)
                return -ENOENT;

        r = cg_unified_controller(SYSTEMD_CGROUP_CONTROLLER);
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        return unit_watch_pids_in_path(u, u->cgroup_path);
}
