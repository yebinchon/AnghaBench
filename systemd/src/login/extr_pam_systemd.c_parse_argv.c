
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int LOG_WARNING ;
 int assert (int) ;
 int pam_syslog (int *,int ,char*,...) ;
 int parse_boolean (char const*) ;
 scalar_t__ startswith (char const*,char*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int parse_argv(
                pam_handle_t *handle,
                int argc, const char **argv,
                const char **class,
                const char **type,
                const char **desktop,
                bool *debug) {

        unsigned i;

        assert(argc >= 0);
        assert(argc == 0 || argv);

        for (i = 0; i < (unsigned) argc; i++) {
                if (startswith(argv[i], "class=")) {
                        if (class)
                                *class = argv[i] + 6;

                } else if (startswith(argv[i], "type=")) {
                        if (type)
                                *type = argv[i] + 5;

                } else if (startswith(argv[i], "desktop=")) {
                        if (desktop)
                                *desktop = argv[i] + 8;

                } else if (streq(argv[i], "debug")) {
                        if (debug)
                                *debug = 1;

                } else if (startswith(argv[i], "debug=")) {
                        int k;

                        k = parse_boolean(argv[i] + 6);
                        if (k < 0)
                                pam_syslog(handle, LOG_WARNING, "Failed to parse debug= argument, ignoring.");
                        else if (debug)
                                *debug = k;

                } else
                        pam_syslog(handle, LOG_WARNING, "Unknown parameter '%s', ignoring", argv[i]);
        }

        return 0;
}
