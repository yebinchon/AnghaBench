
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 scalar_t__ arg_system ;
 int assert (struct rlimit const*) ;
 int fallback_rlimit_memlock (struct rlimit const*) ;
 int fallback_rlimit_nofile (struct rlimit const*) ;
 int log_parse_environment () ;
 int log_warning_errno (int,char*) ;
 int parse_config_file () ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;
 int reset_arguments () ;

__attribute__((used)) static int parse_configuration(const struct rlimit *saved_rlimit_nofile,
                               const struct rlimit *saved_rlimit_memlock) {
        int r;

        assert(saved_rlimit_nofile);
        assert(saved_rlimit_memlock);


        reset_arguments();

        r = parse_config_file();
        if (r < 0)
                log_warning_errno(r, "Failed to parse config file, ignoring: %m");

        if (arg_system) {
                r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), 0);
                if (r < 0)
                        log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");
        }


        fallback_rlimit_nofile(saved_rlimit_nofile);
        fallback_rlimit_memlock(saved_rlimit_memlock);


        log_parse_environment();

        return 0;
}
