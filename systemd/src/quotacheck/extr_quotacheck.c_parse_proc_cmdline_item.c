
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_force ;
 int arg_skip ;
 int log_warning (char*,...) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {

        if (streq(key, "quotacheck.mode")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (streq(value, "auto"))
                        arg_force = arg_skip = 0;
                else if (streq(value, "force"))
                        arg_force = 1;
                else if (streq(value, "skip"))
                        arg_skip = 1;
                else
                        log_warning("Invalid quotacheck.mode= parameter '%s'. Ignoring.", value);
        }
        return 0;
}
