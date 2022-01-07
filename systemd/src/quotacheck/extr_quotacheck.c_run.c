
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EXIT_FAILURE ;
 int FORK_DEATHSIG ;
 int FORK_LOG ;
 int FORK_RESET_SIGNALS ;
 int FORK_RLIMIT_NOFILE_SAFE ;
 int FORK_WAIT ;
 int F_OK ;

 int SYNTHETIC_ERRNO (int ) ;
 int _exit (int ) ;
 scalar_t__ access (char*,int ) ;
 int arg_force ;
 scalar_t__ arg_skip ;
 int execv (char const* const,char**) ;
 int log_error_errno (int ,char*) ;
 int log_setup_service () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;
 int safe_fork (char*,int,int *) ;
 int test_files () ;
 int umask (int) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        log_setup_service();

        if (argc > 1)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "This program takes no arguments.");

        umask(0022);

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), 0);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        test_files();

        if (!arg_force) {
                if (arg_skip)
                        return 0;

                if (access("/run/systemd/quotacheck", F_OK) < 0)
                        return 0;
        }

        r = safe_fork("(quotacheck)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_WAIT|FORK_LOG, ((void*)0));
        if (r < 0)
                return r;
        if (r == 0) {
                static const char * const cmdline[] = {
                        128,
                        "-anug",
                        ((void*)0)
                };



                execv(cmdline[0], (char**) cmdline);
                _exit(EXIT_FAILURE);
        }

        return 0;
}
