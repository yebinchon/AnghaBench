
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ result; int timeout_usec; int control_pid; int kill_context; } ;
typedef int SocketState ;
typedef scalar_t__ SocketResult ;
typedef TYPE_1__ Socket ;


 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 scalar_t__ SOCKET_FAILURE_RESOURCES ;
 int SOCKET_FINAL_SIGKILL ;
 int SOCKET_FINAL_SIGTERM ;
 int SOCKET_STOP_PRE_SIGKILL ;
 int SOCKET_STOP_PRE_SIGTERM ;
 scalar_t__ SOCKET_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int now (int ) ;
 int socket_arm_timer (TYPE_1__*,int ) ;
 int socket_enter_dead (TYPE_1__*,scalar_t__) ;
 int socket_enter_stop_post (TYPE_1__*,scalar_t__) ;
 int socket_set_state (TYPE_1__*,int ) ;
 int state_to_kill_operation (TYPE_1__*,int ) ;
 int unit_kill_context (int ,int *,int ,int,int ,int) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void socket_enter_signal(Socket *s, SocketState state, SocketResult f) {
        int r;

        assert(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        r = unit_kill_context(
                        UNIT(s),
                        &s->kill_context,
                        state_to_kill_operation(s, state),
                        -1,
                        s->control_pid,
                        0);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = socket_arm_timer(s, usec_add(now(CLOCK_MONOTONIC), s->timeout_usec));
                if (r < 0)
                        goto fail;

                socket_set_state(s, state);
        } else if (state == SOCKET_STOP_PRE_SIGTERM)
                socket_enter_signal(s, SOCKET_STOP_PRE_SIGKILL, SOCKET_SUCCESS);
        else if (state == SOCKET_STOP_PRE_SIGKILL)
                socket_enter_stop_post(s, SOCKET_SUCCESS);
        else if (state == SOCKET_FINAL_SIGTERM)
                socket_enter_signal(s, SOCKET_FINAL_SIGKILL, SOCKET_SUCCESS);
        else
                socket_enter_dead(s, SOCKET_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to kill processes: %m");

        if (IN_SET(state, SOCKET_STOP_PRE_SIGTERM, SOCKET_STOP_PRE_SIGKILL))
                socket_enter_stop_post(s, SOCKET_FAILURE_RESOURCES);
        else
                socket_enter_dead(s, SOCKET_FAILURE_RESOURCES);
}
