
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_noresume ;
 int arg_resume_device ;
 int arg_resume_options ;
 int arg_root_options ;
 int free_and_replace (int ,char*) ;
 char* fstab_node_to_udev_node (char const*) ;
 int log_oom () ;
 int log_warning (char*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;
 int strextend_with_separator (int *,char*,char const*,int *) ;

__attribute__((used)) static int parse_proc_cmdline_item(const char *key, const char *value, void *data) {

        if (streq(key, "resume")) {
                char *s;

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                s = fstab_node_to_udev_node(value);
                if (!s)
                        return log_oom();

                free_and_replace(arg_resume_device, s);

        } else if (streq(key, "resumeflags")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (!strextend_with_separator(&arg_resume_options, ",", value, ((void*)0)))
                        return log_oom();

        } else if (streq(key, "rootflags")) {

                if (proc_cmdline_value_missing(key, value))
                        return 0;

                if (!strextend_with_separator(&arg_root_options, ",", value, ((void*)0)))
                        return log_oom();

        } else if (streq(key, "noresume")) {
                if (value) {
                        log_warning("\"noresume\" kernel command line switch specified with an argument, ignoring.");
                        return 0;
                }

                arg_noresume = 1;
        }

        return 0;
}
