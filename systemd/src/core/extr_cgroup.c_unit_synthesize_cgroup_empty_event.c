
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pids; int cgroup_path; } ;
typedef TYPE_1__ Unit ;


 int ENOENT ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_1__*) ;
 int cg_unified_controller (int ) ;
 int set_isempty (int ) ;
 int unit_add_to_cgroup_empty_queue (TYPE_1__*) ;

int unit_synthesize_cgroup_empty_event(Unit *u) {
        int r;

        assert(u);





        if (!u->cgroup_path)
                return -ENOENT;

        r = cg_unified_controller(SYSTEMD_CGROUP_CONTROLLER);
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        if (!set_isempty(u->pids))
                return 0;

        unit_add_to_cgroup_empty_queue(u);
        return 0;
}
