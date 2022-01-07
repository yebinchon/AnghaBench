
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ send_sigkill; } ;
struct TYPE_12__ {scalar_t__ result; TYPE_2__ kill_context; int timeout_stop_usec; int main_pid_alien; int control_pid; int main_pid; } ;
typedef int ServiceState ;
typedef scalar_t__ ServiceResult ;
typedef TYPE_1__ Service ;


 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ,...) ;
 scalar_t__ SERVICE_FAILURE_RESOURCES ;
 int SERVICE_FINAL_SIGKILL ;
 int SERVICE_FINAL_SIGTERM ;
 int SERVICE_STOP_SIGKILL ;
 int SERVICE_STOP_SIGTERM ;
 int SERVICE_STOP_WATCHDOG ;
 scalar_t__ SERVICE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int now (int ) ;
 int service_arm_timer (TYPE_1__*,int ) ;
 int service_enter_dead (TYPE_1__*,scalar_t__,int) ;
 int service_enter_stop_post (TYPE_1__*,scalar_t__) ;
 int service_set_state (TYPE_1__*,int ) ;
 int service_timeout_abort_usec (TYPE_1__*) ;
 int state_to_kill_operation (TYPE_1__*,int ) ;
 int unit_enqueue_rewatch_pids (int ) ;
 int unit_kill_context (int ,TYPE_2__*,int ,int ,int ,int ) ;
 int unit_watch_all_pids (int ) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_enter_signal(Service *s, ServiceState state, ServiceResult f) {
        int r;

        assert(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;


        (void) unit_watch_all_pids(UNIT(s));



        (void) unit_enqueue_rewatch_pids(UNIT(s));

        r = unit_kill_context(
                        UNIT(s),
                        &s->kill_context,
                        state_to_kill_operation(s, state),
                        s->main_pid,
                        s->control_pid,
                        s->main_pid_alien);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = service_arm_timer(s, usec_add(now(CLOCK_MONOTONIC),
                                      state == SERVICE_STOP_WATCHDOG ? service_timeout_abort_usec(s) : s->timeout_stop_usec));
                if (r < 0)
                        goto fail;

                service_set_state(s, state);
        } else if (IN_SET(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM) && s->kill_context.send_sigkill)
                service_enter_signal(s, SERVICE_STOP_SIGKILL, SERVICE_SUCCESS);
        else if (IN_SET(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL))
                service_enter_stop_post(s, SERVICE_SUCCESS);
        else if (state == SERVICE_FINAL_SIGTERM && s->kill_context.send_sigkill)
                service_enter_signal(s, SERVICE_FINAL_SIGKILL, SERVICE_SUCCESS);
        else
                service_enter_dead(s, SERVICE_SUCCESS, 1);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to kill processes: %m");

        if (IN_SET(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL))
                service_enter_stop_post(s, SERVICE_FAILURE_RESOURCES);
        else
                service_enter_dead(s, SERVICE_FAILURE_RESOURCES, 1);
}
