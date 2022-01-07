
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int UnitActiveState ;
struct TYPE_18__ {int manager; scalar_t__ job; } ;
struct TYPE_17__ {size_t state; scalar_t__ type; scalar_t__ reload_result; scalar_t__ result; scalar_t__ will_auto_restart; void* exec_fd_event_source; int control_command_id; int * control_command; int * main_command; void* timer_event_source; } ;
typedef size_t ServiceState ;
typedef TYPE_1__ Service ;


 scalar_t__ IN_SET (size_t,size_t,size_t,size_t,...) ;
 int MANAGER_IS_RELOADING (int ) ;
 int SERVICE_AUTO_RESTART ;
 int SERVICE_CLEANING ;
 int SERVICE_CONDITION ;
 size_t SERVICE_DEAD ;
 size_t SERVICE_EXITED ;
 int SERVICE_FAILED ;
 int SERVICE_FINAL_SIGKILL ;
 int SERVICE_FINAL_SIGTERM ;
 scalar_t__ SERVICE_IDLE ;
 int SERVICE_RELOAD ;
 int SERVICE_RUNNING ;
 scalar_t__ SERVICE_SKIP_CONDITION ;
 size_t SERVICE_START ;
 size_t SERVICE_START_POST ;
 int SERVICE_START_PRE ;
 int SERVICE_STOP ;
 int SERVICE_STOP_POST ;
 int SERVICE_STOP_SIGKILL ;
 int SERVICE_STOP_SIGTERM ;
 int SERVICE_STOP_WATCHDOG ;
 scalar_t__ SERVICE_SUCCESS ;
 TYPE_2__* UNIT (TYPE_1__*) ;
 int UNIT_NOTIFY_RELOAD_FAILURE ;
 int UNIT_NOTIFY_SKIP_CONDITION ;
 int UNIT_NOTIFY_WILL_AUTO_RESTART ;
 int _SERVICE_EXEC_COMMAND_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (TYPE_2__*,int) ;
 int log_unit_debug (TYPE_2__*,char*,int ,int ) ;
 void* sd_event_source_unref (void*) ;
 int service_close_socket_fd (TYPE_1__*) ;
 int service_state_to_string (size_t) ;
 int service_stop_watchdog (TYPE_1__*) ;
 int service_unwatch_control_pid (TYPE_1__*) ;
 int service_unwatch_main_pid (TYPE_1__*) ;
 int service_unwatch_pid_file (TYPE_1__*) ;
 int * state_translation_table ;
 int * state_translation_table_idle ;
 int unit_dequeue_rewatch_pids (TYPE_2__*) ;
 int unit_notify (TYPE_2__*,int const,int const,int) ;
 int unit_prune_cgroup (TYPE_2__*) ;
 int unit_unwatch_all_pids (TYPE_2__*) ;

__attribute__((used)) static void service_set_state(Service *s, ServiceState state) {
        ServiceState old_state;
        const UnitActiveState *table;

        assert(s);

        if (s->state != state)
                bus_unit_send_pending_change_signal(UNIT(s), 0);

        table = s->type == SERVICE_IDLE ? state_translation_table_idle : state_translation_table;

        old_state = s->state;
        s->state = state;

        service_unwatch_pid_file(s);

        if (!IN_SET(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING,
                    SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL,
                    SERVICE_AUTO_RESTART,
                    SERVICE_CLEANING))
                s->timer_event_source = sd_event_source_unref(s->timer_event_source);

        if (!IN_SET(state,
                    SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING, SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL)) {
                service_unwatch_main_pid(s);
                s->main_command = ((void*)0);
        }

        if (!IN_SET(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL,
                    SERVICE_CLEANING)) {
                service_unwatch_control_pid(s);
                s->control_command = ((void*)0);
                s->control_command_id = _SERVICE_EXEC_COMMAND_INVALID;
        }

        if (IN_SET(state, SERVICE_DEAD, SERVICE_FAILED, SERVICE_AUTO_RESTART)) {
                unit_unwatch_all_pids(UNIT(s));
                unit_dequeue_rewatch_pids(UNIT(s));
        }

        if (!IN_SET(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING, SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL) &&
            !(state == SERVICE_DEAD && UNIT(s)->job))
                service_close_socket_fd(s);

        if (state != SERVICE_START)
                s->exec_fd_event_source = sd_event_source_unref(s->exec_fd_event_source);

        if (!IN_SET(state, SERVICE_START_POST, SERVICE_RUNNING, SERVICE_RELOAD))
                service_stop_watchdog(s);



        if (state == SERVICE_EXITED && !MANAGER_IS_RELOADING(UNIT(s)->manager))
                unit_prune_cgroup(UNIT(s));

        if (old_state != state)
                log_unit_debug(UNIT(s), "Changed %s -> %s", service_state_to_string(old_state), service_state_to_string(state));

        unit_notify(UNIT(s), table[old_state], table[state],
                    (s->reload_result == SERVICE_SUCCESS ? 0 : UNIT_NOTIFY_RELOAD_FAILURE) |
                    (s->will_auto_restart ? UNIT_NOTIFY_WILL_AUTO_RESTART : 0) |
                    (s->result == SERVICE_SKIP_CONDITION ? UNIT_NOTIFY_SKIP_CONDITION : 0));
}
