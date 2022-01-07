
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ result; int will_auto_restart; int flush_n_restarts; int forbid_restart; int exec_context; scalar_t__ pid_file; int dynamic_creds; int exec_runtime; int n_keep_fd_store; int restart_usec; } ;
typedef int ServiceState ;
typedef scalar_t__ ServiceResult ;
typedef TYPE_1__ Service ;


 int CLOCK_MONOTONIC ;
 int SERVICE_AUTO_RESTART ;
 int SERVICE_DEAD ;
 int SERVICE_FAILED ;
 scalar_t__ SERVICE_FAILURE_RESOURCES ;
 scalar_t__ SERVICE_SKIP_CONDITION ;
 scalar_t__ SERVICE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_destroy (int *) ;
 int exec_context_revert_tty (int *) ;
 int exec_runtime_unref (int ,int) ;
 int log_unit_debug (int ,char*,...) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int now (int ) ;
 int service_arm_timer (TYPE_1__*,int ) ;
 int service_result_to_string (scalar_t__) ;
 int service_set_state (TYPE_1__*,int ) ;
 int service_shall_restart (TYPE_1__*,char const**) ;
 int unit_add_to_gc_queue (int ) ;
 int unit_destroy_runtime_directory (int ,int *) ;
 int unit_log_failure (int ,int ) ;
 int unit_log_skip (int ,int ) ;
 int unit_log_success (int ) ;
 scalar_t__ unit_stop_pending (int ) ;
 int unit_unref_uid_gid (int ,int) ;
 int unlink (scalar_t__) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_enter_dead(Service *s, ServiceResult f, bool allow_restart) {
        ServiceState end_state;
        int r;

        assert(s);



        if (unit_stop_pending(UNIT(s)))
                allow_restart = 0;

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        if (s->result == SERVICE_SUCCESS) {
                unit_log_success(UNIT(s));
                end_state = SERVICE_DEAD;
        } else if (s->result == SERVICE_SKIP_CONDITION) {
                unit_log_skip(UNIT(s), service_result_to_string(s->result));
                end_state = SERVICE_DEAD;
        } else {
                unit_log_failure(UNIT(s), service_result_to_string(s->result));
                end_state = SERVICE_FAILED;
        }

        if (!allow_restart)
                log_unit_debug(UNIT(s), "Service restart not allowed.");
        else {
                const char *reason;
                bool shall_restart;

                shall_restart = service_shall_restart(s, &reason);
                log_unit_debug(UNIT(s), "Service will %srestart (%s)",
                                        shall_restart ? "" : "not ",
                                        reason);
                if (shall_restart)
                        s->will_auto_restart = 1;
        }



        s->n_keep_fd_store ++;

        service_set_state(s, end_state);

        if (s->will_auto_restart) {
                s->will_auto_restart = 0;

                r = service_arm_timer(s, usec_add(now(CLOCK_MONOTONIC), s->restart_usec));
                if (r < 0) {
                        s->n_keep_fd_store--;
                        goto fail;
                }

                service_set_state(s, SERVICE_AUTO_RESTART);
        } else


                s->flush_n_restarts = 1;



        s->n_keep_fd_store--;
        unit_add_to_gc_queue(UNIT(s));


        s->forbid_restart = 0;


        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 1);


        unit_destroy_runtime_directory(UNIT(s), &s->exec_context);


        unit_unref_uid_gid(UNIT(s), 1);


        dynamic_creds_destroy(&s->dynamic_creds);




        if (s->pid_file)
                (void) unlink(s->pid_file);


        exec_context_revert_tty(&s->exec_context);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to run install restart timer: %m");
        service_enter_dead(s, SERVICE_FAILURE_RESOURCES, 0);
}
