
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cgroup_realized; int bpf_device_control_installed; scalar_t__ cgroup_enabled_mask; scalar_t__ cgroup_realized_mask; int cgroup_path; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_9__ {int cgroup_supported; } ;


 int EBUSY ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int SPECIAL_ROOT_SLICE ;
 int assert (TYPE_2__*) ;
 int bpf_program_unref (int ) ;
 int cg_trim_everywhere (int ,int ,int) ;
 int log_unit_full (TYPE_2__*,int ,int,char*,int ) ;
 int unit_get_cpu_usage (TYPE_2__*,int *) ;
 int unit_has_name (TYPE_2__*,int ) ;
 int unit_release_cgroup (TYPE_2__*) ;

void unit_prune_cgroup(Unit *u) {
        int r;
        bool is_root_slice;

        assert(u);



        if (!u->cgroup_path)
                return;

        (void) unit_get_cpu_usage(u, ((void*)0));

        is_root_slice = unit_has_name(u, SPECIAL_ROOT_SLICE);

        r = cg_trim_everywhere(u->manager->cgroup_supported, u->cgroup_path, !is_root_slice);
        if (r < 0)





                log_unit_full(u, r == -EBUSY ? LOG_DEBUG : LOG_WARNING, r, "Failed to destroy cgroup %s, ignoring: %m", u->cgroup_path);

        if (is_root_slice)
                return;

        unit_release_cgroup(u);

        u->cgroup_realized = 0;
        u->cgroup_realized_mask = 0;
        u->cgroup_enabled_mask = 0;

        u->bpf_device_control_installed = bpf_program_unref(u->bpf_device_control_installed);
}
