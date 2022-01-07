
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ test_run_flags; scalar_t__ cgroup_root; void* pin_cgroupfs_fd; void* cgroup_inotify_fd; void* cgroup_inotify_event_source; void* cgroup_memory_inotify_wd_unit; void* cgroup_control_inotify_wd_unit; void* cgroup_empty_event_source; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ MANAGER_TEST_RUN_MINIMAL ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_1__*) ;
 int cg_trim (int ,scalar_t__,int) ;
 void* hashmap_free (void*) ;
 scalar_t__ mfree (scalar_t__) ;
 void* safe_close (void*) ;
 void* sd_event_source_unref (void*) ;

void manager_shutdown_cgroup(Manager *m, bool delete) {
        assert(m);



        if (delete && m->cgroup_root && m->test_run_flags != MANAGER_TEST_RUN_MINIMAL)
                (void) cg_trim(SYSTEMD_CGROUP_CONTROLLER, m->cgroup_root, 0);

        m->cgroup_empty_event_source = sd_event_source_unref(m->cgroup_empty_event_source);

        m->cgroup_control_inotify_wd_unit = hashmap_free(m->cgroup_control_inotify_wd_unit);
        m->cgroup_memory_inotify_wd_unit = hashmap_free(m->cgroup_memory_inotify_wd_unit);

        m->cgroup_inotify_event_source = sd_event_source_unref(m->cgroup_inotify_event_source);
        m->cgroup_inotify_fd = safe_close(m->cgroup_inotify_fd);

        m->pin_cgroupfs_fd = safe_close(m->pin_cgroupfs_fd);

        m->cgroup_root = mfree(m->cgroup_root);
}
