
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_enabled ;
 int arg_root_enabled ;
 int arg_root_rw ;
 int assert (char const*) ;
 int log_warning_errno (int,char*,char const*) ;
 int parse_boolean (char const*) ;
 scalar_t__ proc_cmdline_key_streq (char const*,char*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 int streq (char const*,char*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {
        int r;

        assert(key);

        if (proc_cmdline_key_streq(key, "systemd.gpt_auto") ||
            proc_cmdline_key_streq(key, "rd.systemd.gpt_auto")) {

                r = value ? parse_boolean(value) : 1;
                if (r < 0)
                        log_warning_errno(r, "Failed to parse gpt-auto switch \"%s\", ignoring: %m", value);
                else
                        arg_enabled = r;

        } else if (proc_cmdline_key_streq(key, "root")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;




                arg_root_enabled = streq(value, "gpt-auto");

        } else if (proc_cmdline_key_streq(key, "roothash")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;



                arg_root_enabled = 0;

        } else if (proc_cmdline_key_streq(key, "rw") && !value)
                arg_root_rw = 1;
        else if (proc_cmdline_key_streq(key, "ro") && !value)
                arg_root_rw = 0;

        return 0;
}
