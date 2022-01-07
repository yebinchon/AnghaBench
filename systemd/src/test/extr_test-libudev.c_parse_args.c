
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int EINVAL ;
 char* GIT_VERSION ;
 int LOG_DEBUG ;
 int arg_monitor ;
 int assert_not_reached (char*) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int log_set_max_level (int ) ;

 char* optarg ;
 int printf (char*,...) ;


__attribute__((used)) static int parse_args(int argc, char *argv[], const char **syspath, const char **subsystem) {
        static const struct option options[] = {
                { "syspath", 128, ((void*)0), 'p' },
                { "subsystem", 128, ((void*)0), 's' },
                { "debug", 129, ((void*)0), 'd' },
                { "help", 129, ((void*)0), 'h' },
                { "version", 129, ((void*)0), 'V' },
                { "monitor", 129, ((void*)0), 'm' },
                {}
        };
        int c;

        while ((c = getopt_long(argc, argv, "p:s:dhVm", options, ((void*)0))) >= 0)
                switch (c) {
                case 'p':
                        *syspath = optarg;
                        break;

                case 's':
                        *subsystem = optarg;
                        break;

                case 'd':
                        log_set_max_level(LOG_DEBUG);
                        break;

                case 'h':
                        printf("--debug --syspath= --subsystem= --help\n");
                        return 0;

                case 'V':
                        printf("%s\n", GIT_VERSION);
                        return 0;

                case 'm':
                        arg_monitor = 1;
                        break;

                case '?':
                        return -EINVAL;

                default:
                        assert_not_reached("Unhandled option code.");
                }

        return 1;
}
