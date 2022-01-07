
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ result; int timeout_stop_usec; scalar_t__ was_abandoned; int kill_context; } ;
typedef int ScopeState ;
typedef scalar_t__ ScopeResult ;
typedef TYPE_1__ Scope ;


 int CLOCK_MONOTONIC ;
 int KILL_KILL ;
 int KILL_TERMINATE ;
 int KILL_TERMINATE_AND_LOG ;
 scalar_t__ SCOPE_FAILURE_RESOURCES ;
 int SCOPE_STOP_SIGKILL ;
 int SCOPE_STOP_SIGTERM ;
 scalar_t__ SCOPE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 scalar_t__ bus_scope_send_request_stop (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int now (int ) ;
 int scope_arm_timer (TYPE_1__*,int ) ;
 int scope_enter_dead (TYPE_1__*,scalar_t__) ;
 int scope_set_state (TYPE_1__*,int ) ;
 int unit_enqueue_rewatch_pids (int ) ;
 int unit_kill_context (int ,int *,int ,int,int,int) ;
 int unit_watch_all_pids (int ) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void scope_enter_signal(Scope *s, ScopeState state, ScopeResult f) {
        bool skip_signal = 0;
        int r;

        assert(s);

        if (s->result == SCOPE_SUCCESS)
                s->result = f;


        (void) unit_watch_all_pids(UNIT(s));



        (void) unit_enqueue_rewatch_pids(UNIT(s));



        if (state == SCOPE_STOP_SIGTERM)
                skip_signal = bus_scope_send_request_stop(s) > 0;

        if (skip_signal)
                r = 1;
        else {
                r = unit_kill_context(
                                UNIT(s),
                                &s->kill_context,
                                state != SCOPE_STOP_SIGTERM ? KILL_KILL :
                                s->was_abandoned ? KILL_TERMINATE_AND_LOG :
                                                              KILL_TERMINATE,
                                -1, -1, 0);
                if (r < 0)
                        goto fail;
        }

        if (r > 0) {
                r = scope_arm_timer(s, usec_add(now(CLOCK_MONOTONIC), s->timeout_stop_usec));
                if (r < 0)
                        goto fail;

                scope_set_state(s, state);
        } else if (state == SCOPE_STOP_SIGTERM)
                scope_enter_signal(s, SCOPE_STOP_SIGKILL, SCOPE_SUCCESS);
        else
                scope_enter_dead(s, SCOPE_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to kill processes: %m");

        scope_enter_dead(s, SCOPE_FAILURE_RESOURCES);
}
