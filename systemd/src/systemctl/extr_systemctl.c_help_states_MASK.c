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

/* Variables and functions */
 int /*<<< orphan*/  AutomountState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DeviceState ; 
 int /*<<< orphan*/  MountState ; 
 int /*<<< orphan*/  PathState ; 
 int /*<<< orphan*/  ScopeState ; 
 int /*<<< orphan*/  ServiceState ; 
 int /*<<< orphan*/  SliceState ; 
 int /*<<< orphan*/  SocketState ; 
 int /*<<< orphan*/  SwapState ; 
 int /*<<< orphan*/  TargetState ; 
 int /*<<< orphan*/  TimerState ; 
 int /*<<< orphan*/  UnitActiveState ; 
 int /*<<< orphan*/  UnitFileState ; 
 int /*<<< orphan*/  UnitLoadState ; 
 int /*<<< orphan*/  _AUTOMOUNT_STATE_MAX ; 
 int /*<<< orphan*/  _DEVICE_STATE_MAX ; 
 int /*<<< orphan*/  _MOUNT_STATE_MAX ; 
 int /*<<< orphan*/  _PATH_STATE_MAX ; 
 int /*<<< orphan*/  _SCOPE_STATE_MAX ; 
 int /*<<< orphan*/  _SERVICE_STATE_MAX ; 
 int /*<<< orphan*/  _SLICE_STATE_MAX ; 
 int /*<<< orphan*/  _SOCKET_STATE_MAX ; 
 int /*<<< orphan*/  _SWAP_STATE_MAX ; 
 int /*<<< orphan*/  _TARGET_STATE_MAX ; 
 int /*<<< orphan*/  _TIMER_STATE_MAX ; 
 int /*<<< orphan*/  _UNIT_ACTIVE_STATE_MAX ; 
 int /*<<< orphan*/  _UNIT_FILE_STATE_MAX ; 
 int /*<<< orphan*/  _UNIT_LOAD_STATE_MAX ; 
 int /*<<< orphan*/  arg_no_legend ; 
 int /*<<< orphan*/  automount_state ; 
 int /*<<< orphan*/  device_state ; 
 int /*<<< orphan*/  mount_state ; 
 int /*<<< orphan*/  path_state ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  scope_state ; 
 int /*<<< orphan*/  service_state ; 
 int /*<<< orphan*/  slice_state ; 
 int /*<<< orphan*/  socket_state ; 
 int /*<<< orphan*/  swap_state ; 
 int /*<<< orphan*/  target_state ; 
 int /*<<< orphan*/  timer_state ; 
 int /*<<< orphan*/  unit_active_state ; 
 int /*<<< orphan*/  unit_file_state ; 
 int /*<<< orphan*/  unit_load_state ; 

__attribute__((used)) static void FUNC2(void) {
        if (!arg_no_legend)
                FUNC1("Available unit load states:");
        FUNC0(unit_load_state, UnitLoadState, _UNIT_LOAD_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable unit active states:");
        FUNC0(unit_active_state, UnitActiveState, _UNIT_ACTIVE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable unit file states:");
        FUNC0(unit_file_state, UnitFileState, _UNIT_FILE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable automount unit substates:");
        FUNC0(automount_state, AutomountState, _AUTOMOUNT_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable device unit substates:");
        FUNC0(device_state, DeviceState, _DEVICE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable mount unit substates:");
        FUNC0(mount_state, MountState, _MOUNT_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable path unit substates:");
        FUNC0(path_state, PathState, _PATH_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable scope unit substates:");
        FUNC0(scope_state, ScopeState, _SCOPE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable service unit substates:");
        FUNC0(service_state, ServiceState, _SERVICE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable slice unit substates:");
        FUNC0(slice_state, SliceState, _SLICE_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable socket unit substates:");
        FUNC0(socket_state, SocketState, _SOCKET_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable swap unit substates:");
        FUNC0(swap_state, SwapState, _SWAP_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable target unit substates:");
        FUNC0(target_state, TargetState, _TARGET_STATE_MAX);

        if (!arg_no_legend)
                FUNC1("\nAvailable timer unit substates:");
        FUNC0(timer_state, TimerState, _TIMER_STATE_MAX);
}