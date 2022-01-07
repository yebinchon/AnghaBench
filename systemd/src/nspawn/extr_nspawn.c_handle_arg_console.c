
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_INTERACTIVE ;
 int CONSOLE_PASSIVE ;
 int CONSOLE_PIPE ;
 int CONSOLE_READ_ONLY ;
 int EINVAL ;
 int SETTING_CONSOLE_MODE ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_console_mode ;
 int arg_settings_mask ;
 int log_error_errno (int ,char*,int ) ;
 int optarg ;
 int puts (char*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int handle_arg_console(const char *arg) {
        if (streq(arg, "help")) {
                puts("interactive\n"
                     "read-only\n"
                     "passive\n"
                     "pipe");
                return 0;
        }

        if (streq(arg, "interactive"))
                arg_console_mode = CONSOLE_INTERACTIVE;
        else if (streq(arg, "read-only"))
                arg_console_mode = CONSOLE_READ_ONLY;
        else if (streq(arg, "passive"))
                arg_console_mode = CONSOLE_PASSIVE;
        else if (streq(arg, "pipe"))
                arg_console_mode = CONSOLE_PIPE;
        else
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Unknown console mode: %s", optarg);

        arg_settings_mask |= SETTING_CONSOLE_MODE;
        return 1;
}
