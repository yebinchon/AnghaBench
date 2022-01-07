
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int *) ;
 int bus_automount_vtable ;
 int bus_cgroup_vtable ;
 int bus_device_vtable ;
 int bus_exec_vtable ;
 int bus_job_vtable ;
 int bus_kill_vtable ;
 int bus_manager_vtable ;
 int bus_mount_vtable ;
 int bus_path_vtable ;
 int bus_scope_vtable ;
 int bus_service_vtable ;
 int bus_slice_vtable ;
 int bus_socket_vtable ;
 int bus_swap_vtable ;
 int bus_target_vtable ;
 int bus_timer_vtable ;
 int bus_unit_cgroup_vtable ;
 int bus_unit_vtable ;
 int vtable_dump_bus_properties (int *,int ) ;

void dump_bus_properties(FILE *f) {
        assert(f);

        vtable_dump_bus_properties(f, bus_automount_vtable);
        vtable_dump_bus_properties(f, bus_cgroup_vtable);
        vtable_dump_bus_properties(f, bus_device_vtable);
        vtable_dump_bus_properties(f, bus_exec_vtable);
        vtable_dump_bus_properties(f, bus_job_vtable);
        vtable_dump_bus_properties(f, bus_kill_vtable);
        vtable_dump_bus_properties(f, bus_manager_vtable);
        vtable_dump_bus_properties(f, bus_mount_vtable);
        vtable_dump_bus_properties(f, bus_path_vtable);
        vtable_dump_bus_properties(f, bus_scope_vtable);
        vtable_dump_bus_properties(f, bus_service_vtable);
        vtable_dump_bus_properties(f, bus_slice_vtable);
        vtable_dump_bus_properties(f, bus_socket_vtable);
        vtable_dump_bus_properties(f, bus_swap_vtable);
        vtable_dump_bus_properties(f, bus_target_vtable);
        vtable_dump_bus_properties(f, bus_timer_vtable);
        vtable_dump_bus_properties(f, bus_unit_vtable);
        vtable_dump_bus_properties(f, bus_unit_cgroup_vtable);
}
