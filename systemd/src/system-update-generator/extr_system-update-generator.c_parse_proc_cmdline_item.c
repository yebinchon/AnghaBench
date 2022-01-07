
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int log_warning (char*,...) ;
 int proc_cmdline_value_missing (char const*,char const*) ;
 scalar_t__ runlevel_to_target (char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {
        assert(key);






        if (streq(key, "systemd.unit") && !proc_cmdline_value_missing(key, value))
                log_warning("Offline system update overridden by kernel command line systemd.unit= setting");
        else if (!value && runlevel_to_target(key))
                log_warning("Offline system update overridden by runlevel \"%s\" on the kernel command line", key);

        return 0;
}
