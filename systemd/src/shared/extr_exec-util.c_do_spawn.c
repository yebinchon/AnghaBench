
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXIT_FAILURE ;
 int FORK_DEATHSIG ;
 int FORK_LOG ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int _exit (int ) ;
 int errno ;
 int execv (char const*,char**) ;
 int log_debug (char*,char const*) ;
 int log_error_errno (int ,char*,char const*) ;
 scalar_t__ null_or_empty_path (char const*) ;
 int rearrange_stdio (int ,int,int ) ;
 int rlimit_nofile_safe () ;
 int safe_fork (char*,int,int *) ;

__attribute__((used)) static int do_spawn(const char *path, char *argv[], int stdout_fd, pid_t *pid) {

        pid_t _pid;
        int r;

        if (null_or_empty_path(path)) {
                log_debug("%s is empty (a mask).", path);
                return 0;
        }

        r = safe_fork("(direxec)", FORK_DEATHSIG|FORK_LOG, &_pid);
        if (r < 0)
                return r;
        if (r == 0) {
                char *_argv[2];

                if (stdout_fd >= 0) {
                        r = rearrange_stdio(STDIN_FILENO, stdout_fd, STDERR_FILENO);
                        if (r < 0)
                                _exit(EXIT_FAILURE);
                }

                (void) rlimit_nofile_safe();

                if (!argv) {
                        _argv[0] = (char*) path;
                        _argv[1] = ((void*)0);
                        argv = _argv;
                } else
                        argv[0] = (char*) path;

                execv(path, argv);
                log_error_errno(errno, "Failed to execute %s: %m", path);
                _exit(EXIT_FAILURE);
        }

        *pid = _pid;
        return 1;
}
