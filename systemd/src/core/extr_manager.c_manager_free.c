
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t UnitType ;
struct TYPE_17__ {int (* shutdown ) (TYPE_1__*) ;} ;
struct TYPE_16__ {struct TYPE_16__** prefix; int gid_refs; int uid_refs; int units_requiring_mounts_for; int rlimit; int switch_root_init; int switch_root; int cgroup_unit; int client_environment; int transient_environment; int lookup_paths; int notify_socket; int event; int user_lookup_fds; int time_change_fd; int cgroups_agent_fd; int notify_fd; int signal_fd; int sync_bus_names_event_source; int user_lookup_event_source; int run_queue_event_source; int jobs_in_progress_event_source; int timezone_change_event_source; int time_change_event_source; int cgroups_agent_event_source; int notify_event_source; int sigchld_event_source; int signal_event_source; int failed_units; int startup_units; int run_queue; int watch_bus; int watch_pids; int jobs; int units_by_invocation_id; int units; int dynamic_users; int exec_runtime_by_id; int objective; } ;
typedef TYPE_1__ Manager ;
typedef size_t ExecDirectoryType ;


 int IN_SET (int ,int ,int ,int ,int ,int ) ;
 int MANAGER_EXIT ;
 int MANAGER_HALT ;
 int MANAGER_KEXEC ;
 int MANAGER_POWEROFF ;
 int MANAGER_REBOOT ;
 size_t _EXEC_DIRECTORY_TYPE_MAX ;
 size_t _UNIT_TYPE_MAX ;
 int assert (int ) ;
 int bus_done (TYPE_1__*) ;
 int dynamic_user_vacuum (TYPE_1__*,int) ;
 int exec_runtime_vacuum (TYPE_1__*) ;
 int free (int ) ;
 int hashmap_free (int ) ;
 int hashmap_isempty (int ) ;
 int lookup_paths_flush_generator (int *) ;
 int lookup_paths_free (int *) ;
 int manager_clear_jobs_and_units (TYPE_1__*) ;
 int manager_close_ask_password (TYPE_1__*) ;
 int manager_close_idle_pipe (TYPE_1__*) ;
 int manager_free_unit_name_maps (TYPE_1__*) ;
 int manager_shutdown_cgroup (TYPE_1__*,int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int prioq_free (int ) ;
 int rlimit_free_all (int ) ;
 int safe_close (int ) ;
 int safe_close_pair (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int set_free (int ) ;
 int strv_free (int ) ;
 int stub1 (TYPE_1__*) ;
 TYPE_2__** unit_vtable ;

Manager* manager_free(Manager *m) {
        ExecDirectoryType dt;
        UnitType c;

        if (!m)
                return ((void*)0);

        manager_clear_jobs_and_units(m);

        for (c = 0; c < _UNIT_TYPE_MAX; c++)
                if (unit_vtable[c]->shutdown)
                        unit_vtable[c]->shutdown(m);


        manager_shutdown_cgroup(m, IN_SET(m->objective, MANAGER_EXIT, MANAGER_REBOOT, MANAGER_POWEROFF, MANAGER_HALT, MANAGER_KEXEC));

        lookup_paths_flush_generator(&m->lookup_paths);

        bus_done(m);

        exec_runtime_vacuum(m);
        hashmap_free(m->exec_runtime_by_id);

        dynamic_user_vacuum(m, 0);
        hashmap_free(m->dynamic_users);

        hashmap_free(m->units);
        hashmap_free(m->units_by_invocation_id);
        hashmap_free(m->jobs);
        hashmap_free(m->watch_pids);
        hashmap_free(m->watch_bus);

        prioq_free(m->run_queue);

        set_free(m->startup_units);
        set_free(m->failed_units);

        sd_event_source_unref(m->signal_event_source);
        sd_event_source_unref(m->sigchld_event_source);
        sd_event_source_unref(m->notify_event_source);
        sd_event_source_unref(m->cgroups_agent_event_source);
        sd_event_source_unref(m->time_change_event_source);
        sd_event_source_unref(m->timezone_change_event_source);
        sd_event_source_unref(m->jobs_in_progress_event_source);
        sd_event_source_unref(m->run_queue_event_source);
        sd_event_source_unref(m->user_lookup_event_source);
        sd_event_source_unref(m->sync_bus_names_event_source);

        safe_close(m->signal_fd);
        safe_close(m->notify_fd);
        safe_close(m->cgroups_agent_fd);
        safe_close(m->time_change_fd);
        safe_close_pair(m->user_lookup_fds);

        manager_close_ask_password(m);

        manager_close_idle_pipe(m);

        sd_event_unref(m->event);

        free(m->notify_socket);

        lookup_paths_free(&m->lookup_paths);
        strv_free(m->transient_environment);
        strv_free(m->client_environment);

        hashmap_free(m->cgroup_unit);
        manager_free_unit_name_maps(m);

        free(m->switch_root);
        free(m->switch_root_init);

        rlimit_free_all(m->rlimit);

        assert(hashmap_isempty(m->units_requiring_mounts_for));
        hashmap_free(m->units_requiring_mounts_for);

        hashmap_free(m->uid_refs);
        hashmap_free(m->gid_refs);

        for (dt = 0; dt < _EXEC_DIRECTORY_TYPE_MAX; dt++)
                m->prefix[dt] = mfree(m->prefix[dt]);

        return mfree(m);
}
