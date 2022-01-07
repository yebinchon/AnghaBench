
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGTTY ;
 int arg_debug_shell ;
 int log_warning_errno (int,char*) ;
 int skip_dev_prefix (int ) ;
 scalar_t__ streq (int ,int ) ;
 int write_drop_in_format (char const*,char*,int,char*,char*,int ,int ) ;

__attribute__((used)) static void install_debug_shell_dropin(const char *dir) {
        int r;

        if (streq(arg_debug_shell, skip_dev_prefix(DEBUGTTY)))
                return;

        r = write_drop_in_format(dir, "debug-shell.service", 50, "tty",
                        "[Unit]\n"
                        "Description=Early root shell on /dev/%s FOR DEBUGGING ONLY\n"
                        "ConditionPathExists=\n"
                        "[Service]\n"
                        "TTYPath=/dev/%s",
                        arg_debug_shell, arg_debug_shell);
        if (r < 0)
                log_warning_errno(r, "Failed to write drop-in for debug-shell.service, ignoring: %m");
}
