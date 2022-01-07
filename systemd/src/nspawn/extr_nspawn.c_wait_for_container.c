
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_code; int si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef int pid_t ;
typedef int ContainerStatus ;





 int CONTAINER_REBOOTED ;
 int CONTAINER_TERMINATED ;
 int EIO ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int SIGHUP ;
 int SIGINT ;
 int SYNTHETIC_ERRNO (int ) ;
 int _fallthrough_ ;
 int arg_machine ;
 int arg_quiet ;
 int log_error_errno (int ,char*,int ,...) ;
 int log_full (int ,char*,int ,...) ;
 int log_warning_errno (int,char*) ;
 int signal_to_string (int) ;
 int wait_for_terminate (int ,TYPE_1__*) ;

__attribute__((used)) static int wait_for_container(pid_t pid, ContainerStatus *container) {
        siginfo_t status;
        int r;

        r = wait_for_terminate(pid, &status);
        if (r < 0)
                return log_warning_errno(r, "Failed to wait for container: %m");

        switch (status.si_code) {

        case 129:
                if (status.si_status == 0)
                        log_full(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s exited successfully.", arg_machine);
                else
                        log_full(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s failed with error code %i.", arg_machine, status.si_status);

                *container = CONTAINER_TERMINATED;
                return status.si_status;

        case 128:
                if (status.si_status == SIGINT) {
                        log_full(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s has been shut down.", arg_machine);
                        *container = CONTAINER_TERMINATED;
                        return 0;

                } else if (status.si_status == SIGHUP) {
                        log_full(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s is being rebooted.", arg_machine);
                        *container = CONTAINER_REBOOTED;
                        return 0;
                }

                _fallthrough_;
        case 130:
                return log_error_errno(SYNTHETIC_ERRNO(EIO),
                                       "Container %s terminated by signal %s.", arg_machine, signal_to_string(status.si_status));

        default:
                return log_error_errno(SYNTHETIC_ERRNO(EIO),
                                       "Container %s failed due to unknown reason.", arg_machine);
        }
}
