
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_autovts; int reserve_vt; int remove_ipc; int inhibit_delay_max; int user_stop_delay; int power_key_ignore_inhibited; int suspend_key_ignore_inhibited; int hibernate_key_ignore_inhibited; int lid_switch_ignore_inhibited; int holdoff_timeout_usec; int idle_action_usec; int sessions_max; int inhibitors_max; void* kill_exclude_users; void* kill_only_users; int kill_user_processes; int user_tasks_max; int runtime_dir_size; void* idle_action; void* handle_lid_switch_docked; int handle_lid_switch_ep; void* handle_lid_switch; int handle_hibernate_key; void* handle_suspend_key; int handle_power_key; } ;
typedef TYPE_1__ Manager ;


 int DEFAULT_USER_TASKS_MAX_PERCENTAGE ;
 int HANDLE_HIBERNATE ;
 void* HANDLE_IGNORE ;
 int HANDLE_POWEROFF ;
 void* HANDLE_SUSPEND ;
 int KILL_USER_PROCESSES ;
 int USEC_PER_MINUTE ;
 int USEC_PER_SEC ;
 int _HANDLE_ACTION_INVALID ;
 int assert (TYPE_1__*) ;
 int physical_memory_scale (unsigned int,unsigned int) ;
 void* strv_free (void*) ;
 int system_tasks_max_scale (int ,unsigned int) ;

void manager_reset_config(Manager *m) {
        assert(m);

        m->n_autovts = 6;
        m->reserve_vt = 6;
        m->remove_ipc = 1;
        m->inhibit_delay_max = 5 * USEC_PER_SEC;
        m->user_stop_delay = 10 * USEC_PER_SEC;

        m->handle_power_key = HANDLE_POWEROFF;
        m->handle_suspend_key = HANDLE_SUSPEND;
        m->handle_hibernate_key = HANDLE_HIBERNATE;
        m->handle_lid_switch = HANDLE_SUSPEND;
        m->handle_lid_switch_ep = _HANDLE_ACTION_INVALID;
        m->handle_lid_switch_docked = HANDLE_IGNORE;
        m->power_key_ignore_inhibited = 0;
        m->suspend_key_ignore_inhibited = 0;
        m->hibernate_key_ignore_inhibited = 0;
        m->lid_switch_ignore_inhibited = 1;

        m->holdoff_timeout_usec = 30 * USEC_PER_SEC;

        m->idle_action_usec = 30 * USEC_PER_MINUTE;
        m->idle_action = HANDLE_IGNORE;

        m->runtime_dir_size = physical_memory_scale(10U, 100U);
        m->user_tasks_max = system_tasks_max_scale(DEFAULT_USER_TASKS_MAX_PERCENTAGE, 100U);
        m->sessions_max = 8192;
        m->inhibitors_max = 8192;

        m->kill_user_processes = KILL_USER_PROCESSES;

        m->kill_only_users = strv_free(m->kill_only_users);
        m->kill_exclude_users = strv_free(m->kill_exclude_users);
}
