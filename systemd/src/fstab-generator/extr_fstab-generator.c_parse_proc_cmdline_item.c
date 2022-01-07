
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VolatileMode ;


 scalar_t__ STR_IN_SET (char const*,char*,char*) ;
 scalar_t__ VOLATILE_YES ;
 int arg_fstab_enabled ;
 int arg_root_fstype ;
 int arg_root_hash ;
 int arg_root_options ;
 int arg_root_rw ;
 int arg_root_what ;
 int arg_usr_fstype ;
 int arg_usr_options ;
 int arg_usr_what ;
 scalar_t__ arg_volatile_mode ;
 scalar_t__ free_and_strdup (int *,char const*) ;
 int log_oom () ;
 int log_warning (char*,char const*) ;
 int parse_boolean (char const*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;
 int strextend_with_separator (int *,char*,char const*,int *) ;
 scalar_t__ volatile_mode_from_string (char const*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {
        int r;





        if (STR_IN_SET(key, "fstab", "rd.fstab")) {

                r = value ? parse_boolean(value) : 1;
                if (r < 0)
                        log_warning("Failed to parse fstab switch %s. Ignoring.", value);
                else
                        arg_fstab_enabled = r;

        } else if (streq(key, "root")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_root_what, value) < 0)
                        return log_oom();

        } else if (streq(key, "rootfstype")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_root_fstype, value) < 0)
                        return log_oom();

        } else if (streq(key, "rootflags")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (!strextend_with_separator(&arg_root_options, ",", value, ((void*)0)))
                        return log_oom();

        } else if (streq(key, "roothash")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_root_hash, value) < 0)
                        return log_oom();

        } else if (streq(key, "mount.usr")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_usr_what, value) < 0)
                        return log_oom();

        } else if (streq(key, "mount.usrfstype")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (free_and_strdup(&arg_usr_fstype, value) < 0)
                        return log_oom();

        } else if (streq(key, "mount.usrflags")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (!strextend_with_separator(&arg_usr_options, ",", value, ((void*)0)))
                        return log_oom();

        } else if (streq(key, "rw") && !value)
                arg_root_rw = 1;
        else if (streq(key, "ro") && !value)
                arg_root_rw = 0;
        else if (streq(key, "systemd.volatile")) {
                VolatileMode m;

                if (value) {
                        m = volatile_mode_from_string(value);
                        if (m < 0)
                                log_warning("Failed to parse systemd.volatile= argument: %s", value);
                        else
                                arg_volatile_mode = m;
                } else
                        arg_volatile_mode = VOLATILE_YES;
        }

        return 0;
}
