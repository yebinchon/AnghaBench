
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; int control_command_id; int * control_command; int timer_event_source; } ;
typedef scalar_t__ SocketState ;
typedef TYPE_1__ Socket ;


 int IN_SET (scalar_t__,int ,int ,scalar_t__,int ,int ,int ,int ,int ,...) ;
 int SOCKET_CLEANING ;
 int SOCKET_FINAL_SIGKILL ;
 int SOCKET_FINAL_SIGTERM ;
 scalar_t__ SOCKET_LISTENING ;
 int SOCKET_RUNNING ;
 int SOCKET_START_CHOWN ;
 int SOCKET_START_POST ;
 int SOCKET_START_PRE ;
 int SOCKET_STOP_POST ;
 int SOCKET_STOP_PRE ;
 int SOCKET_STOP_PRE_SIGKILL ;
 int SOCKET_STOP_PRE_SIGTERM ;
 int UNIT (TYPE_1__*) ;
 int _SOCKET_EXEC_COMMAND_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 int sd_event_source_unref (int ) ;
 int socket_close_fds (TYPE_1__*) ;
 int socket_state_to_string (scalar_t__) ;
 int socket_unwatch_control_pid (TYPE_1__*) ;
 int socket_unwatch_fds (TYPE_1__*) ;
 int * state_translation_table ;
 int unit_notify (int ,int ,int ,int ) ;

__attribute__((used)) static void socket_set_state(Socket *s, SocketState state) {
        SocketState old_state;
        assert(s);

        if (s->state != state)
                bus_unit_send_pending_change_signal(UNIT(s), 0);

        old_state = s->state;
        s->state = state;

        if (!IN_SET(state,
                    SOCKET_START_PRE,
                    SOCKET_START_CHOWN,
                    SOCKET_START_POST,
                    SOCKET_STOP_PRE,
                    SOCKET_STOP_PRE_SIGTERM,
                    SOCKET_STOP_PRE_SIGKILL,
                    SOCKET_STOP_POST,
                    SOCKET_FINAL_SIGTERM,
                    SOCKET_FINAL_SIGKILL,
                    SOCKET_CLEANING)) {

                s->timer_event_source = sd_event_source_unref(s->timer_event_source);
                socket_unwatch_control_pid(s);
                s->control_command = ((void*)0);
                s->control_command_id = _SOCKET_EXEC_COMMAND_INVALID;
        }

        if (state != SOCKET_LISTENING)
                socket_unwatch_fds(s);

        if (!IN_SET(state,
                    SOCKET_START_CHOWN,
                    SOCKET_START_POST,
                    SOCKET_LISTENING,
                    SOCKET_RUNNING,
                    SOCKET_STOP_PRE,
                    SOCKET_STOP_PRE_SIGTERM,
                    SOCKET_STOP_PRE_SIGKILL,
                    SOCKET_CLEANING))
                socket_close_fds(s);

        if (state != old_state)
                log_unit_debug(UNIT(s), "Changed %s -> %s", socket_state_to_string(old_state), socket_state_to_string(state));

        unit_notify(UNIT(s), state_translation_table[old_state], state_translation_table[state], 0);
}
