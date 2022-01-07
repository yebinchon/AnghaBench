
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EXIT_SUCCESS ;
 char* GIT_VERSION ;
 int LOG_DEBUG ;
 int LOG_TARGET_CONSOLE ;
 int MAX_PATH_LEN ;
 int PAGE_80 ;
 int PAGE_83 ;
 int PAGE_83_PRE_SPC3 ;
 int SYNTHETIC_ERRNO (int ) ;
 int all_good ;
 int assert_not_reached (char*) ;
 int atoi (char*) ;
 char* config_file ;
 int default_page_code ;
 int dev_specified ;
 int exit (int ) ;
 int export ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int help () ;
 int log_error_errno (int ,char*,char*) ;
 int log_open () ;
 int log_set_max_level (int ) ;
 int log_set_target (int ) ;
 char* optarg ;
 int optind ;
 int options ;
 int printf (char*,char*) ;
 int reformat_serial ;
 int sg_version ;
 int streq (char*,char*) ;
 int strscpy (char*,int ,char*) ;

__attribute__((used)) static int set_options(int argc, char **argv,
                       char *maj_min_dev) {
        int option;






        optind = 1;
        while ((option = getopt_long(argc, argv, "d:f:gp:uvVxhbs:", options, ((void*)0))) >= 0)
                switch (option) {
                case 'b':
                        all_good = 0;
                        break;

                case 'd':
                        dev_specified = 1;
                        strscpy(maj_min_dev, MAX_PATH_LEN, optarg);
                        break;

                case 'f':
                        strscpy(config_file, MAX_PATH_LEN, optarg);
                        break;

                case 'g':
                        all_good = 1;
                        break;

                case 'h':
                        help();
                        exit(EXIT_SUCCESS);

                case 'p':
                        if (streq(optarg, "0x80"))
                                default_page_code = PAGE_80;
                        else if (streq(optarg, "0x83"))
                                default_page_code = PAGE_83;
                        else if (streq(optarg, "pre-spc3-83"))
                                default_page_code = PAGE_83_PRE_SPC3;
                        else
                                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                                       "Unknown page code '%s'",
                                                       optarg);
                        break;

                case 's':
                        sg_version = atoi(optarg);
                        if (sg_version < 3 || sg_version > 4)
                                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                                       "Unknown SG version '%s'",
                                                       optarg);
                        break;

                case 'u':
                        reformat_serial = 1;
                        break;

                case 'v':
                        log_set_target(LOG_TARGET_CONSOLE);
                        log_set_max_level(LOG_DEBUG);
                        log_open();
                        break;

                case 'V':
                        printf("%s\n", GIT_VERSION);
                        exit(EXIT_SUCCESS);

                case 'x':
                        export = 1;
                        break;

                case '?':
                        return -1;

                default:
                        assert_not_reached("Unknown option");
                }

        if (optind < argc && !dev_specified) {
                dev_specified = 1;
                strscpy(maj_min_dev, MAX_PATH_LEN, argv[optind]);
        }

        return 0;
}
