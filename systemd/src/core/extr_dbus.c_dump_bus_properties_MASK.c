#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_automount_vtable ; 
 int /*<<< orphan*/  bus_cgroup_vtable ; 
 int /*<<< orphan*/  bus_device_vtable ; 
 int /*<<< orphan*/  bus_exec_vtable ; 
 int /*<<< orphan*/  bus_job_vtable ; 
 int /*<<< orphan*/  bus_kill_vtable ; 
 int /*<<< orphan*/  bus_manager_vtable ; 
 int /*<<< orphan*/  bus_mount_vtable ; 
 int /*<<< orphan*/  bus_path_vtable ; 
 int /*<<< orphan*/  bus_scope_vtable ; 
 int /*<<< orphan*/  bus_service_vtable ; 
 int /*<<< orphan*/  bus_slice_vtable ; 
 int /*<<< orphan*/  bus_socket_vtable ; 
 int /*<<< orphan*/  bus_swap_vtable ; 
 int /*<<< orphan*/  bus_target_vtable ; 
 int /*<<< orphan*/  bus_timer_vtable ; 
 int /*<<< orphan*/  bus_unit_cgroup_vtable ; 
 int /*<<< orphan*/  bus_unit_vtable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(FILE *f) {
        FUNC0(f);

        FUNC1(f, bus_automount_vtable);
        FUNC1(f, bus_cgroup_vtable);
        FUNC1(f, bus_device_vtable);
        FUNC1(f, bus_exec_vtable);
        FUNC1(f, bus_job_vtable);
        FUNC1(f, bus_kill_vtable);
        FUNC1(f, bus_manager_vtable);
        FUNC1(f, bus_mount_vtable);
        FUNC1(f, bus_path_vtable);
        FUNC1(f, bus_scope_vtable);
        FUNC1(f, bus_service_vtable);
        FUNC1(f, bus_slice_vtable);
        FUNC1(f, bus_socket_vtable);
        FUNC1(f, bus_swap_vtable);
        FUNC1(f, bus_target_vtable);
        FUNC1(f, bus_timer_vtable);
        FUNC1(f, bus_unit_vtable);
        FUNC1(f, bus_unit_cgroup_vtable);
}