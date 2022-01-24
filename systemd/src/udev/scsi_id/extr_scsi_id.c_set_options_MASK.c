#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 char* GIT_VERSION ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_TARGET_CONSOLE ; 
 int /*<<< orphan*/  MAX_PATH_LEN ; 
 int /*<<< orphan*/  PAGE_80 ; 
 int /*<<< orphan*/  PAGE_83 ; 
 int /*<<< orphan*/  PAGE_83_PRE_SPC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int all_good ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* config_file ; 
 int /*<<< orphan*/  default_page_code ; 
 int dev_specified ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int export ; 
 int FUNC4 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int reformat_serial ; 
 int sg_version ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(int argc, char **argv,
                       char *maj_min_dev) {
        int option;

        /*
         * optind is a global extern used by getopt. Since we can call
         * set_options twice (once for command line, and once for config
         * file) we have to reset this back to 1.
         */
        optind = 1;
        while ((option = FUNC4(argc, argv, "d:f:gp:uvVxhbs:", options, NULL)) >= 0)
                switch (option) {
                case 'b':
                        all_good = false;
                        break;

                case 'd':
                        dev_specified = true;
                        FUNC12(maj_min_dev, MAX_PATH_LEN, optarg);
                        break;

                case 'f':
                        FUNC12(config_file, MAX_PATH_LEN, optarg);
                        break;

                case 'g':
                        all_good = true;
                        break;

                case 'h':
                        FUNC5();
                        FUNC3(EXIT_SUCCESS);

                case 'p':
                        if (FUNC11(optarg, "0x80"))
                                default_page_code = PAGE_80;
                        else if (FUNC11(optarg, "0x83"))
                                default_page_code = PAGE_83;
                        else if (FUNC11(optarg, "pre-spc3-83"))
                                default_page_code = PAGE_83_PRE_SPC3;
                        else
                                return FUNC6(FUNC0(EINVAL),
                                                       "Unknown page code '%s'",
                                                       optarg);
                        break;

                case 's':
                        sg_version = FUNC2(optarg);
                        if (sg_version < 3 || sg_version > 4)
                                return FUNC6(FUNC0(EINVAL),
                                                       "Unknown SG version '%s'",
                                                       optarg);
                        break;

                case 'u':
                        reformat_serial = true;
                        break;

                case 'v':
                        FUNC9(LOG_TARGET_CONSOLE);
                        FUNC8(LOG_DEBUG);
                        FUNC7();
                        break;

                case 'V':
                        FUNC10("%s\n", GIT_VERSION);
                        FUNC3(EXIT_SUCCESS);

                case 'x':
                        export = true;
                        break;

                case '?':
                        return -1;

                default:
                        FUNC1("Unknown option");
                }

        if (optind < argc && !dev_specified) {
                dev_specified = true;
                FUNC12(maj_min_dev, MAX_PATH_LEN, argv[optind]);
        }

        return 0;
}