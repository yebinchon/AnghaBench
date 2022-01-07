
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ result; size_t control_command_id; int control_pid; int timeout_stop_usec; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef scalar_t__ ServiceResult ;
typedef TYPE_1__ Service ;


 int EXEC_APPLY_CHROOT ;
 int EXEC_APPLY_SANDBOXING ;
 int EXEC_APPLY_TTY_STDIN ;
 int EXEC_CONTROL_CGROUP ;
 int EXEC_IS_CONTROL ;
 int EXEC_SETENV_RESULT ;
 size_t SERVICE_EXEC_STOP_POST ;
 scalar_t__ SERVICE_FAILURE_RESOURCES ;
 int SERVICE_FINAL_SIGTERM ;
 int SERVICE_STOP_POST ;
 scalar_t__ SERVICE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int service_enter_signal (TYPE_1__*,int ,scalar_t__) ;
 int service_set_state (TYPE_1__*,int ) ;
 int service_spawn (TYPE_1__*,scalar_t__,int ,int,int *) ;
 int service_unwatch_control_pid (TYPE_1__*) ;
 int unit_enqueue_rewatch_pids (int ) ;

__attribute__((used)) static void service_enter_stop_post(Service *s, ServiceResult f) {
        int r;
        assert(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        service_unwatch_control_pid(s);
        (void) unit_enqueue_rewatch_pids(UNIT(s));

        s->control_command = s->exec_command[SERVICE_EXEC_STOP_POST];
        if (s->control_command) {
                s->control_command_id = SERVICE_EXEC_STOP_POST;

                r = service_spawn(s,
                                  s->control_command,
                                  s->timeout_stop_usec,
                                  EXEC_APPLY_SANDBOXING|EXEC_APPLY_CHROOT|EXEC_APPLY_TTY_STDIN|EXEC_IS_CONTROL|EXEC_SETENV_RESULT|EXEC_CONTROL_CGROUP,
                                  &s->control_pid);
                if (r < 0)
                        goto fail;

                service_set_state(s, SERVICE_STOP_POST);
        } else
                service_enter_signal(s, SERVICE_FINAL_SIGTERM, SERVICE_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to run 'stop-post' task: %m");
        service_enter_signal(s, SERVICE_FINAL_SIGTERM, SERVICE_FAILURE_RESOURCES);
}
