
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; unsigned char member_3; int * member_2; int const member_1; } ;


 int EINVAL ;
 int UDEVLIBEXECDIR ;
 int arg_hwdb_bin_dir ;
 void* arg_root ;
 int arg_strict ;
 void* arg_test ;
 int arg_update ;
 int assert_not_reached (char*) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int help () ;

 void* optarg ;
 int print_version () ;


__attribute__((used)) static int parse_argv(int argc, char *argv[]) {
        enum {
                ARG_USR = 0x100,
        };

        static const struct option options[] = {
                { "update", 129, ((void*)0), 'u' },
                { "usr", 129, ((void*)0), ARG_USR },
                { "strict", 129, ((void*)0), 's' },
                { "test", 128, ((void*)0), 't' },
                { "root", 128, ((void*)0), 'r' },
                { "version", 129, ((void*)0), 'V' },
                { "help", 129, ((void*)0), 'h' },
                {}
        };

        int c;

        while ((c = getopt_long(argc, argv, "ust:r:Vh", options, ((void*)0))) >= 0)
                switch(c) {
                case 'u':
                        arg_update = 1;
                        break;
                case ARG_USR:
                        arg_hwdb_bin_dir = UDEVLIBEXECDIR;
                        break;
                case 's':
                        arg_strict = 1;
                        break;
                case 't':
                        arg_test = optarg;
                        break;
                case 'r':
                        arg_root = optarg;
                        break;
                case 'V':
                        return print_version();
                case 'h':
                        return help();
                case '?':
                        return -EINVAL;
                default:
                        assert_not_reached("Unknown option");
                }

        return 1;
}
