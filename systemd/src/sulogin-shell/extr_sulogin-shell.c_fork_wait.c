
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXIT_FAILURE ;
 int FORK_DEATHSIG ;
 int FORK_LOG ;
 int FORK_RESET_SIGNALS ;
 int FORK_RLIMIT_NOFILE_SAFE ;
 int WAIT_LOG_ABNORMAL ;
 int _exit (int ) ;
 int errno ;
 int execv (char const* const,char**) ;
 int log_error_errno (int ,char*,char const* const) ;
 int safe_fork (char*,int,int *) ;
 int wait_for_terminate_and_check (char const* const,int ,int ) ;

__attribute__((used)) static int fork_wait(const char* const cmdline[]) {
        pid_t pid;
        int r;

        r = safe_fork("(sulogin)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {

                execv(cmdline[0], (char**) cmdline);
                log_error_errno(errno, "Failed to execute %s: %m", cmdline[0]);
                _exit(EXIT_FAILURE);
        }

        return wait_for_terminate_and_check(cmdline[0], pid, WAIT_LOG_ABNORMAL);
}
