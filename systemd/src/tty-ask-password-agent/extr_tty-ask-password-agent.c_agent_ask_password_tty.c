
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int AskPasswordFlags ;


 int ACQUIRE_TERMINAL_WAIT ;
 int USEC_INFINITY ;
 int acquire_terminal (char const*,int ,int ) ;
 scalar_t__ arg_console ;
 scalar_t__ arg_device ;
 int ask_password_tty (int,char const*,int *,int ,int ,char const*,char***) ;
 int log_error_errno (int,char*,char const*) ;
 int log_warning_errno (int,char*) ;
 int release_terminal () ;
 int reset_terminal_fd (int,int) ;
 int safe_close (int) ;

__attribute__((used)) static int agent_ask_password_tty(
                const char *message,
                usec_t until,
                AskPasswordFlags flags,
                const char *flag_file,
                char ***ret) {

        int tty_fd = -1;
        int r;

        if (arg_console) {
                const char *con = arg_device ?: "/dev/console";

                tty_fd = acquire_terminal(con, ACQUIRE_TERMINAL_WAIT, USEC_INFINITY);
                if (tty_fd < 0)
                        return log_error_errno(tty_fd, "Failed to acquire %s: %m", con);

                r = reset_terminal_fd(tty_fd, 1);
                if (r < 0)
                        log_warning_errno(r, "Failed to reset terminal, ignoring: %m");

        }

        r = ask_password_tty(tty_fd, message, ((void*)0), until, flags, flag_file, ret);

        if (arg_console) {
                tty_fd = safe_close(tty_fd);
                release_terminal();
        }

        return 0;
}
