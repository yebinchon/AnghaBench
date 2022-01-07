
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACQUIRE_TERMINAL_FORCE ;
 int ACQUIRE_TERMINAL_PERMISSIVE ;
 int USEC_INFINITY ;
 int acquire_terminal (char*,int,int ) ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 int make_null_stdio () ;
 int rearrange_stdio (int,int,int) ;
 int reset_terminal_fd (int,int) ;
 int reset_terminal_feature_caches () ;

int make_console_stdio(void) {
        int fd, r;





        fd = acquire_terminal("/dev/console", ACQUIRE_TERMINAL_FORCE|ACQUIRE_TERMINAL_PERMISSIVE, USEC_INFINITY);
        if (fd < 0) {
                log_warning_errno(fd, "Failed to acquire terminal, using /dev/null stdin/stdout/stderr instead: %m");

                r = make_null_stdio();
                if (r < 0)
                        return log_error_errno(r, "Failed to make /dev/null stdin/stdout/stderr: %m");

        } else {
                r = reset_terminal_fd(fd, 1);
                if (r < 0)
                        log_warning_errno(r, "Failed to reset terminal, ignoring: %m");

                r = rearrange_stdio(fd, fd, fd);
                if (r < 0)
                        return log_error_errno(r, "Failed to make terminal stdin/stdout/stderr: %m");
        }

        reset_terminal_feature_caches();
        return 0;
}
