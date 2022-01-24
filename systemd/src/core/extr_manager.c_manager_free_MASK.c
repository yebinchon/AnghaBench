#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UnitType ;
struct TYPE_17__ {int /*<<< orphan*/  (* shutdown ) (TYPE_1__*) ;} ;
struct TYPE_16__ {struct TYPE_16__** prefix; int /*<<< orphan*/  gid_refs; int /*<<< orphan*/  uid_refs; int /*<<< orphan*/  units_requiring_mounts_for; int /*<<< orphan*/  rlimit; int /*<<< orphan*/  switch_root_init; int /*<<< orphan*/  switch_root; int /*<<< orphan*/  cgroup_unit; int /*<<< orphan*/  client_environment; int /*<<< orphan*/  transient_environment; int /*<<< orphan*/  lookup_paths; int /*<<< orphan*/  notify_socket; int /*<<< orphan*/  event; int /*<<< orphan*/  user_lookup_fds; int /*<<< orphan*/  time_change_fd; int /*<<< orphan*/  cgroups_agent_fd; int /*<<< orphan*/  notify_fd; int /*<<< orphan*/  signal_fd; int /*<<< orphan*/  sync_bus_names_event_source; int /*<<< orphan*/  user_lookup_event_source; int /*<<< orphan*/  run_queue_event_source; int /*<<< orphan*/  jobs_in_progress_event_source; int /*<<< orphan*/  timezone_change_event_source; int /*<<< orphan*/  time_change_event_source; int /*<<< orphan*/  cgroups_agent_event_source; int /*<<< orphan*/  notify_event_source; int /*<<< orphan*/  sigchld_event_source; int /*<<< orphan*/  signal_event_source; int /*<<< orphan*/  failed_units; int /*<<< orphan*/  startup_units; int /*<<< orphan*/  run_queue; int /*<<< orphan*/  watch_bus; int /*<<< orphan*/  watch_pids; int /*<<< orphan*/  jobs; int /*<<< orphan*/  units_by_invocation_id; int /*<<< orphan*/  units; int /*<<< orphan*/  dynamic_users; int /*<<< orphan*/  exec_runtime_by_id; int /*<<< orphan*/  objective; } ;
typedef  TYPE_1__ Manager ;
typedef  size_t ExecDirectoryType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGER_EXIT ; 
 int /*<<< orphan*/  MANAGER_HALT ; 
 int /*<<< orphan*/  MANAGER_KEXEC ; 
 int /*<<< orphan*/  MANAGER_POWEROFF ; 
 int /*<<< orphan*/  MANAGER_REBOOT ; 
 size_t _EXEC_DIRECTORY_TYPE_MAX ; 
 size_t _UNIT_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 TYPE_2__** unit_vtable ; 

Manager* FUNC25(Manager *m) {
        ExecDirectoryType dt;
        UnitType c;

        if (!m)
                return NULL;

        FUNC10(m);

        for (c = 0; c < _UNIT_TYPE_MAX; c++)
                if (unit_vtable[c]->shutdown)
                        unit_vtable[c]->shutdown(m);

        /* Keep the cgroup hierarchy in place except when we know we are going down for good */
        FUNC14(m, FUNC0(m->objective, MANAGER_EXIT, MANAGER_REBOOT, MANAGER_POWEROFF, MANAGER_HALT, MANAGER_KEXEC));

        FUNC8(&m->lookup_paths);

        FUNC2(m);

        FUNC4(m);
        FUNC6(m->exec_runtime_by_id);

        FUNC3(m, false);
        FUNC6(m->dynamic_users);

        FUNC6(m->units);
        FUNC6(m->units_by_invocation_id);
        FUNC6(m->jobs);
        FUNC6(m->watch_pids);
        FUNC6(m->watch_bus);

        FUNC16(m->run_queue);

        FUNC22(m->startup_units);
        FUNC22(m->failed_units);

        FUNC20(m->signal_event_source);
        FUNC20(m->sigchld_event_source);
        FUNC20(m->notify_event_source);
        FUNC20(m->cgroups_agent_event_source);
        FUNC20(m->time_change_event_source);
        FUNC20(m->timezone_change_event_source);
        FUNC20(m->jobs_in_progress_event_source);
        FUNC20(m->run_queue_event_source);
        FUNC20(m->user_lookup_event_source);
        FUNC20(m->sync_bus_names_event_source);

        FUNC18(m->signal_fd);
        FUNC18(m->notify_fd);
        FUNC18(m->cgroups_agent_fd);
        FUNC18(m->time_change_fd);
        FUNC19(m->user_lookup_fds);

        FUNC11(m);

        FUNC12(m);

        FUNC21(m->event);

        FUNC5(m->notify_socket);

        FUNC9(&m->lookup_paths);
        FUNC23(m->transient_environment);
        FUNC23(m->client_environment);

        FUNC6(m->cgroup_unit);
        FUNC13(m);

        FUNC5(m->switch_root);
        FUNC5(m->switch_root_init);

        FUNC17(m->rlimit);

        FUNC1(FUNC7(m->units_requiring_mounts_for));
        FUNC6(m->units_requiring_mounts_for);

        FUNC6(m->uid_refs);
        FUNC6(m->gid_refs);

        for (dt = 0; dt < _EXEC_DIRECTORY_TYPE_MAX; dt++)
                m->prefix[dt] = FUNC15(m->prefix[dt]);

        return FUNC15(m);
}