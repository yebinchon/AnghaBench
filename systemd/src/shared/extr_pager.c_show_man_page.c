
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXIT_FAILURE ;
 int FORK_DEATHSIG ;
 int FORK_LOG ;
 int FORK_NULL_STDIO ;
 int FORK_RESET_SIGNALS ;
 int FORK_RLIMIT_NOFILE_SAFE ;
 int _exit (int ) ;
 int errno ;
 int execvp (char const*,char**) ;
 int log_error_errno (int ,char*) ;
 int safe_fork (char*,int,int *) ;
 size_t strlen (char const*) ;
 char* strndupa (char const*,int) ;
 char* strrchr (char const*,char) ;
 int wait_for_terminate_and_check (int *,int ,int ) ;

int show_man_page(const char *desc, bool null_stdio) {
        const char *args[4] = { "man", ((void*)0), ((void*)0), ((void*)0) };
        char *e = ((void*)0);
        pid_t pid;
        size_t k;
        int r;

        k = strlen(desc);

        if (desc[k-1] == ')')
                e = strrchr(desc, '(');

        if (e) {
                char *page = ((void*)0), *section = ((void*)0);

                page = strndupa(desc, e - desc);
                section = strndupa(e + 1, desc + k - e - 2);

                args[1] = section;
                args[2] = page;
        } else
                args[1] = desc;

        r = safe_fork("(man)", FORK_RESET_SIGNALS|FORK_DEATHSIG|(null_stdio ? FORK_NULL_STDIO : 0)|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {

                execvp(args[0], (char**) args);
                log_error_errno(errno, "Failed to execute man: %m");
                _exit(EXIT_FAILURE);
        }

        return wait_for_terminate_and_check(((void*)0), pid, 0);
}
