
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_data_what ;
 int arg_enabled ;
 int arg_hash_what ;
 int arg_root_hash ;
 int free_and_strdup (int *,char const*) ;
 int log_oom () ;
 int log_warning (char*,char const*) ;
 int parse_boolean (char const*) ;
 scalar_t__ proc_cmdline_key_streq (char const*,char*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {
        int r;

        if (proc_cmdline_key_streq(key, "systemd.verity")) {

                r = value ? parse_boolean(value) : 1;
                if (r < 0)
                        log_warning("Failed to parse verity= kernel command line switch %s. Ignoring.", value);
                else
                        arg_enabled = r;

        } else if (proc_cmdline_key_streq(key, "roothash")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = free_and_strdup(&arg_root_hash, value);
                if (r < 0)
                        return log_oom();

        } else if (proc_cmdline_key_streq(key, "systemd.verity_root_data")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = free_and_strdup(&arg_data_what, value);
                if (r < 0)
                        return log_oom();

        } else if (proc_cmdline_key_streq(key, "systemd.verity_root_hash")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                r = free_and_strdup(&arg_hash_what, value);
                if (r < 0)
                        return log_oom();
        }

        return 0;
}
