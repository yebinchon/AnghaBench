
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int) ;
 int arg_exists ;
 int arg_timeout ;
 int assert_not_reached (char*) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int help () ;
 int log_error_errno (int,char*,int ) ;
 int log_info_errno (int ,char*,int) ;

 int optarg ;
 int parse_sec (int ,int *) ;
 int print_version () ;


__attribute__((used)) static int parse_argv(int argc, char *argv[]) {
        static const struct option options[] = {
                { "timeout", 128, ((void*)0), 't' },
                { "exit-if-exists", 128, ((void*)0), 'E' },
                { "version", 129, ((void*)0), 'V' },
                { "help", 129, ((void*)0), 'h' },
                { "seq-start", 128, ((void*)0), 's' },
                { "seq-end", 128, ((void*)0), 'e' },
                { "quiet", 129, ((void*)0), 'q' },
                {}
        };

        int c, r;

        while ((c = getopt_long(argc, argv, "t:E:Vhs:e:q", options, ((void*)0))) >= 0) {
                switch (c) {
                case 't':
                        r = parse_sec(optarg, &arg_timeout);
                        if (r < 0)
                                return log_error_errno(r, "Failed to parse timeout value '%s': %m", optarg);
                        break;
                case 'E':
                        arg_exists = optarg;
                        break;
                case 'V':
                        return print_version();
                case 'h':
                        return help();
                case 's':
                case 'e':
                case 'q':
                        return log_info_errno(SYNTHETIC_ERRNO(EINVAL),
                                              "Option -%c no longer supported.",
                                              c);
                case '?':
                        return -EINVAL;
                default:
                        assert_not_reached("Unknown option.");
                }
        }

        return 1;
}
