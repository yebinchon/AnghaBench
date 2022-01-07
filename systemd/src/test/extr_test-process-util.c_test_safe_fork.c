
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_code; int si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef int pid_t ;


 int BLOCK_SIGNALS (int ) ;
 scalar_t__ CLD_EXITED ;
 int FORK_CLOSE_ALL_FDS ;
 int FORK_DEATHSIG ;
 int FORK_NULL_STDIO ;
 int FORK_REOPEN_LOG ;
 int FORK_RESET_SIGNALS ;
 int SIGCHLD ;
 int USEC_PER_MSEC ;
 int _exit (int) ;
 int assert_se (int) ;
 int safe_fork (char*,int,int *) ;
 int usleep (int) ;
 scalar_t__ wait_for_terminate (int ,TYPE_1__*) ;

__attribute__((used)) static void test_safe_fork(void) {
        siginfo_t status;
        pid_t pid;
        int r;

        BLOCK_SIGNALS(SIGCHLD);

        r = safe_fork("(test-child)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_NULL_STDIO|FORK_REOPEN_LOG, &pid);
        assert_se(r >= 0);

        if (r == 0) {

                usleep(100 * USEC_PER_MSEC);

                _exit(88);
        }

        assert_se(wait_for_terminate(pid, &status) >= 0);
        assert_se(status.si_code == CLD_EXITED);
        assert_se(status.si_status == 88);
}
