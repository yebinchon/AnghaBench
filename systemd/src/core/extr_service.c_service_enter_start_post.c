
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t control_command_id; int control_pid; int timeout_start_usec; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef TYPE_1__ Service ;


 int EXEC_APPLY_CHROOT ;
 int EXEC_APPLY_SANDBOXING ;
 int EXEC_CONTROL_CGROUP ;
 int EXEC_IS_CONTROL ;
 size_t SERVICE_EXEC_START_POST ;
 int SERVICE_FAILURE_RESOURCES ;
 int SERVICE_START_POST ;
 int SERVICE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int service_enter_running (TYPE_1__*,int ) ;
 int service_enter_stop (TYPE_1__*,int ) ;
 int service_reset_watchdog (TYPE_1__*) ;
 int service_set_state (TYPE_1__*,int ) ;
 int service_spawn (TYPE_1__*,scalar_t__,int ,int,int *) ;
 int service_unwatch_control_pid (TYPE_1__*) ;

__attribute__((used)) static void service_enter_start_post(Service *s) {
        int r;
        assert(s);

        service_unwatch_control_pid(s);
        service_reset_watchdog(s);

        s->control_command = s->exec_command[SERVICE_EXEC_START_POST];
        if (s->control_command) {
                s->control_command_id = SERVICE_EXEC_START_POST;

                r = service_spawn(s,
                                  s->control_command,
                                  s->timeout_start_usec,
                                  EXEC_APPLY_SANDBOXING|EXEC_APPLY_CHROOT|EXEC_IS_CONTROL|EXEC_CONTROL_CGROUP,
                                  &s->control_pid);
                if (r < 0)
                        goto fail;

                service_set_state(s, SERVICE_START_POST);
        } else
                service_enter_running(s, SERVICE_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to run 'start-post' task: %m");
        service_enter_stop(s, SERVICE_FAILURE_RESOURCES);
}
