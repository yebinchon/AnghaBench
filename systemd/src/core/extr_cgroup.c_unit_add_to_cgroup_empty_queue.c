
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int in_cgroup_empty_queue; TYPE_1__* manager; int cgroup_path; } ;
typedef TYPE_2__ Unit ;
struct TYPE_7__ {int cgroup_empty_event_source; int cgroup_empty_queue; } ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int SD_EVENT_ONESHOT ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_2__*) ;
 int cg_is_empty_recursive (int ,int ) ;
 int cgroup_empty_queue ;
 int log_debug_errno (int,char*) ;
 int log_unit_debug_errno (TYPE_2__*,int,char*,int ) ;
 int sd_event_source_set_enabled (int ,int ) ;

void unit_add_to_cgroup_empty_queue(Unit *u) {
        int r;

        assert(u);
        if (u->in_cgroup_empty_queue)
                return;


        if (!u->cgroup_path)
                return;
        r = cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, u->cgroup_path);
        if (r < 0) {
                log_unit_debug_errno(u, r, "Failed to determine whether cgroup %s is empty: %m", u->cgroup_path);
                return;
        }
        if (r == 0)
                return;

        LIST_PREPEND(cgroup_empty_queue, u->manager->cgroup_empty_queue, u);
        u->in_cgroup_empty_queue = 1;


        r = sd_event_source_set_enabled(u->manager->cgroup_empty_event_source, SD_EVENT_ONESHOT);
        if (r < 0)
                log_debug_errno(r, "Failed to enable cgroup empty event source: %m");
}
