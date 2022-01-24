#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ test_run_flags; scalar_t__ cgroup_root; void* pin_cgroupfs_fd; void* cgroup_inotify_fd; void* cgroup_inotify_event_source; void* cgroup_memory_inotify_wd_unit; void* cgroup_control_inotify_wd_unit; void* cgroup_empty_event_source; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ MANAGER_TEST_RUN_MINIMAL ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 

void FUNC6(Manager *m, bool delete) {
        FUNC0(m);

        /* We can't really delete the group, since we are in it. But
         * let's trim it. */
        if (delete && m->cgroup_root && m->test_run_flags != MANAGER_TEST_RUN_MINIMAL)
                (void) FUNC1(SYSTEMD_CGROUP_CONTROLLER, m->cgroup_root, false);

        m->cgroup_empty_event_source = FUNC5(m->cgroup_empty_event_source);

        m->cgroup_control_inotify_wd_unit = FUNC2(m->cgroup_control_inotify_wd_unit);
        m->cgroup_memory_inotify_wd_unit = FUNC2(m->cgroup_memory_inotify_wd_unit);

        m->cgroup_inotify_event_source = FUNC5(m->cgroup_inotify_event_source);
        m->cgroup_inotify_fd = FUNC4(m->cgroup_inotify_fd);

        m->pin_cgroupfs_fd = FUNC4(m->pin_cgroupfs_fd);

        m->cgroup_root = FUNC3(m->cgroup_root);
}