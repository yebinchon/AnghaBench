
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;
typedef int pid_t ;


 scalar_t__ EINTR ;
 int P_PID ;
 int WEXITED ;
 int assert (int) ;
 scalar_t__ errno ;
 int negative_errno () ;
 scalar_t__ waitid (int ,int,int *,int ) ;
 int zero (int ) ;

int wait_for_terminate(pid_t pid, siginfo_t *status) {
        siginfo_t dummy;

        assert(pid >= 1);

        if (!status)
                status = &dummy;

        for (;;) {
                zero(*status);

                if (waitid(P_PID, pid, status, WEXITED) < 0) {

                        if (errno == EINTR)
                                continue;

                        return negative_errno();
                }

                return 0;
        }
}
