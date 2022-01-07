
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
 int WAIT_LOG ;
 int X_OK ;
 int _exit (int ) ;
 scalar_t__ access (char const*,int ) ;
 int errno ;
 int execv (char const*,char**) ;
 int log_error_errno (int ,char*,char const*) ;
 int safe_fork (char*,int,int *) ;
 scalar_t__ streq (char const*,char*) ;
 char* strjoina (char*,char const*) ;
 int wait_for_terminate_and_check (char const*,int ,int ) ;

__attribute__((used)) static int makefs(const char *type, const char *device) {
        const char *mkfs;
        pid_t pid;
        int r;

        if (streq(type, "swap"))
                mkfs = "/sbin/mkswap";
        else
                mkfs = strjoina("/sbin/mkfs.", type);
        if (access(mkfs, X_OK) != 0)
                return log_error_errno(errno, "%s is not executable: %m", mkfs);

        r = safe_fork("(mkfs)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {
                const char *cmdline[3] = { mkfs, device, ((void*)0) };



                execv(cmdline[0], (char**) cmdline);
                _exit(EXIT_FAILURE);
        }

        return wait_for_terminate_and_check(mkfs, pid, WAIT_LOG);
}
