
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_children_max ;
 int arg_event_timeout_usec ;
 int arg_exec_delay_usec ;
 int assert (char const*) ;
 int log_level_from_string (char const*) ;
 int log_set_max_level (int) ;
 int log_warning (char*,char const*) ;
 int log_warning_errno (int,char*,char const*,char const*) ;
 int parse_sec (char const*,int *) ;
 scalar_t__ proc_cmdline_key_streq (char const*,char*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 int safe_atou (char const*,int *) ;
 scalar_t__ startswith (char const*,char*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {
        int r = 0;

        assert(key);

        if (!value)
                return 0;

        if (proc_cmdline_key_streq(key, "udev.log_priority")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = log_level_from_string(value);
                if (r >= 0)
                        log_set_max_level(r);

        } else if (proc_cmdline_key_streq(key, "udev.event_timeout")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = parse_sec(value, &arg_event_timeout_usec);

        } else if (proc_cmdline_key_streq(key, "udev.children_max")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = safe_atou(value, &arg_children_max);

        } else if (proc_cmdline_key_streq(key, "udev.exec_delay")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = parse_sec(value, &arg_exec_delay_usec);

        } else if (startswith(key, "udev."))
                log_warning("Unknown udev kernel command line option \"%s\", ignoring", key);

        if (r < 0)
                log_warning_errno(r, "Failed to parse \"%s=%s\", ignoring: %m", key, value);

        return 0;
}
