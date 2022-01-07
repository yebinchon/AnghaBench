
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_pid; int si_status; } ;
typedef TYPE_1__ siginfo_t ;


 scalar_t__ ECHILD ;
 int PROTECT_ERRNO ;
 int P_ALL ;
 int WEXITED ;
 int WNOHANG ;
 scalar_t__ errno ;
 int log_error_errno (scalar_t__,char*) ;
 int log_info (char*,scalar_t__,int ) ;
 int waitid (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static void sigchld_hdl(int sig) {
        PROTECT_ERRNO;

        for (;;) {
                siginfo_t si;
                int r;

                si.si_pid = 0;
                r = waitid(P_ALL, 0, &si, WEXITED | WNOHANG);
                if (r < 0) {
                        if (errno != ECHILD)
                                log_error_errno(errno, "Failed to reap children: %m");
                        return;
                }
                if (si.si_pid == 0)
                        return;

                log_info("Child %d died with code %d", si.si_pid, si.si_status);
        }
}
