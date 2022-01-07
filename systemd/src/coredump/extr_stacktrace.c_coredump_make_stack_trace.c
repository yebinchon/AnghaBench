
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int dwfl_errmsg (int ) ;
 int dwfl_errno () ;
 int log_warning (char*,int ) ;
 int log_warning_errno (int,char*) ;
 int make_stack_trace (int,char const*,char**) ;

void coredump_make_stack_trace(int fd, const char *executable, char **ret) {
        int r;

        r = make_stack_trace(fd, executable, ret);
        if (r == -EINVAL)
                log_warning("Failed to generate stack trace: %s", dwfl_errmsg(dwfl_errno()));
        else if (r < 0)
                log_warning_errno(r, "Failed to generate stack trace: %m");
}
