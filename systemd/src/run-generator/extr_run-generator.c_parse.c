
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_commands ;
 int arg_failure_action ;
 int arg_success_action ;
 scalar_t__ free_and_strdup (int *,char const*) ;
 int log_oom () ;
 scalar_t__ proc_cmdline_key_streq (char const*,char*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 int strv_extend (int *,char const*) ;

__attribute__((used)) static int parse(const char *key, const char *value, void *data) {
        int r;

        if (proc_cmdline_key_streq(key, "systemd.run")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = strv_extend(&arg_commands, value);
                if (r < 0)
                        return log_oom();

        } else if (proc_cmdline_key_streq(key, "systemd.run_success_action")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_success_action, value) < 0)
                        return log_oom();

        } else if (proc_cmdline_key_streq(key, "systemd.run_failure_action")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_failure_action, value) < 0)
                        return log_oom();
        }

        return 0;
}
