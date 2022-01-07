
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ result; size_t control_command_id; int control_pid; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef scalar_t__ SocketResult ;
typedef TYPE_1__ Socket ;


 size_t SOCKET_EXEC_STOP_POST ;
 scalar_t__ SOCKET_FAILURE_RESOURCES ;
 int SOCKET_FINAL_SIGTERM ;
 int SOCKET_STOP_POST ;
 scalar_t__ SOCKET_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int socket_enter_signal (TYPE_1__*,int ,scalar_t__) ;
 int socket_set_state (TYPE_1__*,int ) ;
 int socket_spawn (TYPE_1__*,scalar_t__,int *) ;
 int socket_unwatch_control_pid (TYPE_1__*) ;

__attribute__((used)) static void socket_enter_stop_post(Socket *s, SocketResult f) {
        int r;
        assert(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        socket_unwatch_control_pid(s);
        s->control_command_id = SOCKET_EXEC_STOP_POST;
        s->control_command = s->exec_command[SOCKET_EXEC_STOP_POST];

        if (s->control_command) {
                r = socket_spawn(s, s->control_command, &s->control_pid);
                if (r < 0)
                        goto fail;

                socket_set_state(s, SOCKET_STOP_POST);
        } else
                socket_enter_signal(s, SOCKET_FINAL_SIGTERM, SOCKET_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to run 'stop-post' task: %m");
        socket_enter_signal(s, SOCKET_FINAL_SIGTERM, SOCKET_FAILURE_RESOURCES);
}
