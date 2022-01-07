
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int) ;
 char* arg_command ;
 char* arg_syspath ;
 int assert_not_reached (char*) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int help () ;
 int log_error_errno (int ,char*) ;

 int optind ;
 int print_version () ;

__attribute__((used)) static int parse_argv(int argc, char *argv[]) {
        static const struct option options[] = {
                { "version", 128, ((void*)0), 'V' },
                { "help", 128, ((void*)0), 'h' },
                {}
        };

        int c;

        while ((c = getopt_long(argc, argv, "Vh", options, ((void*)0))) >= 0)
                switch (c) {
                case 'V':
                        return print_version();
                case 'h':
                        return help();
                case '?':
                        return -EINVAL;
                default:
                        assert_not_reached("Unknown option");
                }

        arg_command = argv[optind++];
        if (!arg_command)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Command missing.");

        arg_syspath = argv[optind++];
        if (!arg_syspath)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "syspath missing.");

        return 1;
}
