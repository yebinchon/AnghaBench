
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutomountState ;
 int DUMP_STRING_TABLE (int ,int ,int ) ;
 int DeviceState ;
 int MountState ;
 int PathState ;
 int ScopeState ;
 int ServiceState ;
 int SliceState ;
 int SocketState ;
 int SwapState ;
 int TargetState ;
 int TimerState ;
 int UnitActiveState ;
 int UnitFileState ;
 int UnitLoadState ;
 int _AUTOMOUNT_STATE_MAX ;
 int _DEVICE_STATE_MAX ;
 int _MOUNT_STATE_MAX ;
 int _PATH_STATE_MAX ;
 int _SCOPE_STATE_MAX ;
 int _SERVICE_STATE_MAX ;
 int _SLICE_STATE_MAX ;
 int _SOCKET_STATE_MAX ;
 int _SWAP_STATE_MAX ;
 int _TARGET_STATE_MAX ;
 int _TIMER_STATE_MAX ;
 int _UNIT_ACTIVE_STATE_MAX ;
 int _UNIT_FILE_STATE_MAX ;
 int _UNIT_LOAD_STATE_MAX ;
 int arg_no_legend ;
 int automount_state ;
 int device_state ;
 int mount_state ;
 int path_state ;
 int puts (char*) ;
 int scope_state ;
 int service_state ;
 int slice_state ;
 int socket_state ;
 int swap_state ;
 int target_state ;
 int timer_state ;
 int unit_active_state ;
 int unit_file_state ;
 int unit_load_state ;

__attribute__((used)) static void help_states(void) {
        if (!arg_no_legend)
                puts("Available unit load states:");
        DUMP_STRING_TABLE(unit_load_state, UnitLoadState, _UNIT_LOAD_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable unit active states:");
        DUMP_STRING_TABLE(unit_active_state, UnitActiveState, _UNIT_ACTIVE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable unit file states:");
        DUMP_STRING_TABLE(unit_file_state, UnitFileState, _UNIT_FILE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable automount unit substates:");
        DUMP_STRING_TABLE(automount_state, AutomountState, _AUTOMOUNT_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable device unit substates:");
        DUMP_STRING_TABLE(device_state, DeviceState, _DEVICE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable mount unit substates:");
        DUMP_STRING_TABLE(mount_state, MountState, _MOUNT_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable path unit substates:");
        DUMP_STRING_TABLE(path_state, PathState, _PATH_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable scope unit substates:");
        DUMP_STRING_TABLE(scope_state, ScopeState, _SCOPE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable service unit substates:");
        DUMP_STRING_TABLE(service_state, ServiceState, _SERVICE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable slice unit substates:");
        DUMP_STRING_TABLE(slice_state, SliceState, _SLICE_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable socket unit substates:");
        DUMP_STRING_TABLE(socket_state, SocketState, _SOCKET_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable swap unit substates:");
        DUMP_STRING_TABLE(swap_state, SwapState, _SWAP_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable target unit substates:");
        DUMP_STRING_TABLE(target_state, TargetState, _TARGET_STATE_MAX);

        if (!arg_no_legend)
                puts("\nAvailable timer unit substates:");
        DUMP_STRING_TABLE(timer_state, TimerState, _TIMER_STATE_MAX);
}
