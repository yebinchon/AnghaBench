
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t control_command_id; int control_pid; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef TYPE_1__ Socket ;


 size_t SOCKET_EXEC_START_PRE ;
 int SOCKET_FAILURE_RESOURCES ;
 int SOCKET_START_PRE ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int socket_enter_dead (TYPE_1__*,int ) ;
 int socket_enter_start_chown (TYPE_1__*) ;
 int socket_set_state (TYPE_1__*,int ) ;
 int socket_spawn (TYPE_1__*,scalar_t__,int *) ;
 int socket_unwatch_control_pid (TYPE_1__*) ;
 int unit_warn_leftover_processes (int ) ;

__attribute__((used)) static void socket_enter_start_pre(Socket *s) {
        int r;
        assert(s);

        socket_unwatch_control_pid(s);

        unit_warn_leftover_processes(UNIT(s));

        s->control_command_id = SOCKET_EXEC_START_PRE;
        s->control_command = s->exec_command[SOCKET_EXEC_START_PRE];

        if (s->control_command) {
                r = socket_spawn(s, s->control_command, &s->control_pid);
                if (r < 0) {
                        log_unit_warning_errno(UNIT(s), r, "Failed to run 'start-pre' task: %m");
                        goto fail;
                }

                socket_set_state(s, SOCKET_START_PRE);
        } else
                socket_enter_start_chown(s);

        return;

fail:
        socket_enter_dead(s, SOCKET_FAILURE_RESOURCES);
}
