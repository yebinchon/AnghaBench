
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int reset_accounting; } ;
typedef TYPE_1__ Unit ;
struct TYPE_13__ {scalar_t__ state; int main_pid_known; int main_pid_alien; int forbid_restart; int watchdog_override_enable; int flush_n_restarts; scalar_t__ n_restarts; int main_exec_status; int exec_command; int watchdog_override_usec; int watchdog_usec; int watchdog_original_usec; int notify_state; scalar_t__ status_errno; int status_text; void* reload_result; void* result; } ;
typedef TYPE_2__ Service ;


 int EAGAIN ;
 TYPE_2__* IN_SET (scalar_t__,int ,int ,...) ;
 int NOTIFY_UNKNOWN ;
 TYPE_2__* SERVICE (TYPE_1__*) ;
 scalar_t__ SERVICE_AUTO_RESTART ;
 int SERVICE_CLEANING ;
 int SERVICE_CONDITION ;
 int SERVICE_DEAD ;
 int SERVICE_FAILED ;
 int SERVICE_FAILURE_START_LIMIT_HIT ;
 int SERVICE_FINAL_SIGKILL ;
 int SERVICE_FINAL_SIGTERM ;
 int SERVICE_START ;
 int SERVICE_START_POST ;
 int SERVICE_START_PRE ;
 int SERVICE_STOP ;
 int SERVICE_STOP_POST ;
 int SERVICE_STOP_SIGKILL ;
 int SERVICE_STOP_SIGTERM ;
 int SERVICE_STOP_WATCHDOG ;
 void* SERVICE_SUCCESS ;
 int USEC_INFINITY ;
 int _SERVICE_EXEC_COMMAND_MAX ;
 int assert (TYPE_2__*) ;
 int exec_command_reset_status_list_array (int ,int ) ;
 int exec_status_reset (int *) ;
 int mfree (int ) ;
 int service_enter_condition (TYPE_2__*) ;
 int service_enter_dead (TYPE_2__*,int ,int) ;
 int unit_acquire_invocation_id (TYPE_1__*) ;
 int unit_test_start_limit (TYPE_1__*) ;

__attribute__((used)) static int service_start(Unit *u) {
        Service *s = SERVICE(u);
        int r;

        assert(s);



        if (IN_SET(s->state,
                   SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                   SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL, SERVICE_CLEANING))
                return -EAGAIN;


        if (IN_SET(s->state, SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST))
                return 0;
        if (s->state == SERVICE_AUTO_RESTART)
                return -EAGAIN;

        assert(IN_SET(s->state, SERVICE_DEAD, SERVICE_FAILED));


        r = unit_test_start_limit(u);
        if (r < 0) {
                service_enter_dead(s, SERVICE_FAILURE_START_LIMIT_HIT, 0);
                return r;
        }

        r = unit_acquire_invocation_id(u);
        if (r < 0)
                return r;

        s->result = SERVICE_SUCCESS;
        s->reload_result = SERVICE_SUCCESS;
        s->main_pid_known = 0;
        s->main_pid_alien = 0;
        s->forbid_restart = 0;

        s->status_text = mfree(s->status_text);
        s->status_errno = 0;

        s->notify_state = NOTIFY_UNKNOWN;

        s->watchdog_original_usec = s->watchdog_usec;
        s->watchdog_override_enable = 0;
        s->watchdog_override_usec = USEC_INFINITY;

        exec_command_reset_status_list_array(s->exec_command, _SERVICE_EXEC_COMMAND_MAX);
        exec_status_reset(&s->main_exec_status);


        if (s->flush_n_restarts) {
                s->n_restarts = 0;
                s->flush_n_restarts = 0;
        }

        u->reset_accounting = 1;

        service_enter_condition(s);
        return 1;
}
