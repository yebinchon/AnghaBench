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
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;
typedef  int /*<<< orphan*/  LOG_BACKEND ;

/* Variables and functions */
 int /*<<< orphan*/  DAEMON_VERSION_NUMBER ; 
 int /*<<< orphan*/  LOG_BACKEND_STDOUT ; 
 int /*<<< orphan*/  LOG_BACKEND_SYSLOG ; 
 int /*<<< orphan*/  LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  LOG_LEVEL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
#define  no_argument 129 
 char* optarg ; 
 scalar_t__ opterr ; 
 int /*<<< orphan*/  optind ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC5(int argc, char *argv[], char **cfg_file_path, LOG_BACKEND *log_backend,
                                   bool *run_in_foreground)
{
    if (argc < 2) {
        FUNC4(LOG_LEVEL_ERROR, "Error: No arguments provided.\n\n");
        FUNC2();
        FUNC0(1);
    }

    opterr = 0;

    static struct option long_options[] = {
        {"config",      required_argument, 0, 'c'}, // required option
        {"foreground",  no_argument,       0, 'f'},
        {"help",        no_argument,       0, 'h'},
        {"log-backend", required_argument, 0, 'l'}, // optional, defaults to syslog
        {"version",     no_argument,       0, 'v'},
        {0,             0,                 0,  0 }
    };

    bool cfg_file_path_set = false;
    bool log_backend_set   = false;

    *run_in_foreground = false;

    int opt;

    while ((opt = FUNC1(argc, argv, ":", long_options, NULL)) != -1) {

        switch (opt) {

            case 'c':
                *cfg_file_path = optarg;
                cfg_file_path_set = true;
                break;

            case 'f':
                *run_in_foreground = true;
                break;

            case 'h':
                FUNC2();
                FUNC0(0);

            case 'l':
                if (FUNC3(optarg, "syslog") == 0) {
                    *log_backend = LOG_BACKEND_SYSLOG;
                    log_backend_set = true;
                } else if (FUNC3(optarg, "stdout") == 0) {
                    *log_backend = LOG_BACKEND_STDOUT;
                    log_backend_set = true;
                } else {
                    FUNC4(LOG_LEVEL_ERROR, "Error: Invalid BACKEND value for --log-backend option passed: %s\n\n", optarg);
                    FUNC2();
                    FUNC0(1);
                }

                break;

            case 'v':
                FUNC4(LOG_LEVEL_INFO, "Version: %lu\n", DAEMON_VERSION_NUMBER);
                FUNC0(0);

            case '?':
                FUNC4(LOG_LEVEL_ERROR, "Error: Unrecognized option %s\n\n", argv[optind - 1]);
                FUNC2();
                FUNC0(1);

            case ':':
                FUNC4(LOG_LEVEL_ERROR, "Error: No argument provided for option %s\n\n", argv[optind - 1]);
                FUNC2();
                FUNC0(1);
        }
    }

    if (!log_backend_set) {
        *log_backend = LOG_BACKEND_SYSLOG;
    }

    if (!cfg_file_path_set) {
        FUNC4(LOG_LEVEL_ERROR, "Error: The required --config option wasn't specified\n\n");
        FUNC2();
        FUNC0(1);
    }
}