
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int control_pid; int * control_command; int control_command_id; int group; int user; } ;
typedef TYPE_1__ Socket ;


 int SOCKET_EXEC_START_CHOWN ;
 int SOCKET_FAILURE_RESOURCES ;
 int SOCKET_START_CHOWN ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int isempty (int ) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int socket_chown (TYPE_1__*,int *) ;
 int socket_enter_start_post (TYPE_1__*) ;
 int socket_enter_stop_pre (TYPE_1__*,int ) ;
 int socket_open_fds (TYPE_1__*) ;
 int socket_set_state (TYPE_1__*,int ) ;
 int socket_unwatch_control_pid (TYPE_1__*) ;

__attribute__((used)) static void socket_enter_start_chown(Socket *s) {
        int r;

        assert(s);

        r = socket_open_fds(s);
        if (r < 0) {
                log_unit_warning_errno(UNIT(s), r, "Failed to listen on sockets: %m");
                goto fail;
        }

        if (!isempty(s->user) || !isempty(s->group)) {

                socket_unwatch_control_pid(s);
                s->control_command_id = SOCKET_EXEC_START_CHOWN;
                s->control_command = ((void*)0);

                r = socket_chown(s, &s->control_pid);
                if (r < 0) {
                        log_unit_warning_errno(UNIT(s), r, "Failed to fork 'start-chown' task: %m");
                        goto fail;
                }

                socket_set_state(s, SOCKET_START_CHOWN);
        } else
                socket_enter_start_post(s);

        return;

fail:
        socket_enter_stop_pre(s, SOCKET_FAILURE_RESOURCES);
}
