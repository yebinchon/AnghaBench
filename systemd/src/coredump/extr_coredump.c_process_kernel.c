
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iovec_wrapper {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_pid1; scalar_t__ is_journald; } ;
typedef TYPE_1__ Context ;


 int LOG_CRIT ;
 int LOG_TARGET_JOURNAL_OR_KMSG ;
 int SD_MESSAGE_COREDUMP_STR ;
 int STDIN_FILENO ;
 int STRINGIFY (int ) ;
 int disable_coredumps () ;
 int gather_pid_metadata (struct iovec_wrapper*,TYPE_1__*) ;
 int gather_pid_metadata_from_argv (struct iovec_wrapper*,TYPE_1__*,int,char**) ;
 struct iovec_wrapper* iovw_free_free (struct iovec_wrapper*) ;
 struct iovec_wrapper* iovw_new () ;
 int iovw_put_string_field (struct iovec_wrapper*,char*,int ) ;
 int log_debug (char*) ;
 int log_notice (char*) ;
 int log_oom () ;
 int log_open () ;
 int log_set_target (int ) ;
 int send_iovec (struct iovec_wrapper*,int ) ;
 int submit_coredump (TYPE_1__*,struct iovec_wrapper*,int ) ;

__attribute__((used)) static int process_kernel(int argc, char* argv[]) {
        Context context = {};
        struct iovec_wrapper *iovw;
        int r;

        log_debug("Processing coredump received from the kernel...");

        iovw = iovw_new();
        if (!iovw)
                return log_oom();

        (void) iovw_put_string_field(iovw, "MESSAGE_ID=", SD_MESSAGE_COREDUMP_STR);
        (void) iovw_put_string_field(iovw, "PRIORITY=", STRINGIFY(LOG_CRIT));


        r = gather_pid_metadata_from_argv(iovw, &context, argc - 1, argv + 1);
        if (r < 0)
                goto finish;


        r = gather_pid_metadata(iovw, &context);
        if (r < 0)
                goto finish;

        if (!context.is_journald) {

                log_set_target(LOG_TARGET_JOURNAL_OR_KMSG);
                log_open();
        }







        if (context.is_pid1) {
                log_notice("Due to PID 1 having crashed coredump collection will now be turned off.");
                disable_coredumps();
        }

        if (context.is_journald || context.is_pid1)
                r = submit_coredump(&context, iovw, STDIN_FILENO);
        else
                r = send_iovec(iovw, STDIN_FILENO);

 finish:
        iovw = iovw_free_free(iovw);
        return r;
}
