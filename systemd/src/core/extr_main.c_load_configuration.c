
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* rlimit ;


 scalar_t__ SHOW_STATUS_YES ;
 int SPECIAL_DEFAULT_TARGET ;
 scalar_t__ _SHOW_STATUS_INVALID ;
 scalar_t__ arg_default_unit ;
 scalar_t__ arg_show_status ;
 int assert (char const**) ;
 int log_oom () ;
 int parse_argv (int,char**) ;
 int parse_configuration (char const* const*,char const* const*) ;
 scalar_t__ strdup (int ) ;

__attribute__((used)) static int load_configuration(
                int argc,
                char **argv,
                const struct rlimit *saved_rlimit_nofile,
                const struct rlimit *saved_rlimit_memlock,
                const char **ret_error_message) {
        int r;

        assert(saved_rlimit_nofile);
        assert(saved_rlimit_memlock);
        assert(ret_error_message);

        (void) parse_configuration(saved_rlimit_nofile, saved_rlimit_memlock);

        r = parse_argv(argc, argv);
        if (r < 0) {
                *ret_error_message = "Failed to parse commandline arguments";
                return r;
        }


        if (!arg_default_unit) {
                arg_default_unit = strdup(SPECIAL_DEFAULT_TARGET);
                if (!arg_default_unit) {
                        *ret_error_message = "Failed to set default unit";
                        return log_oom();
                }
        }


        if (arg_show_status == _SHOW_STATUS_INVALID)
                arg_show_status = SHOW_STATUS_YES;

        return 0;
}
