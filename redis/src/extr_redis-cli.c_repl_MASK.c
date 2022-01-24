#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_2__ {int interactive; char* prompt; int eval_ldb; scalar_t__ output; scalar_t__ eval_ldb_sync; scalar_t__ eval_ldb_end; int /*<<< orphan*/  hostport; int /*<<< orphan*/  hostip; scalar_t__ eval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_FORCE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 scalar_t__ OUTPUT_RAW ; 
 scalar_t__ OUTPUT_STANDARD ; 
 int /*<<< orphan*/  REDIS_CLI_HISTFILE_DEFAULT ; 
 int /*<<< orphan*/  REDIS_CLI_HISTFILE_ENV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char**,int,int) ; 
 char** FUNC8 (char*,int*) ; 
 int /*<<< orphan*/  completionCallback ; 
 TYPE_1__ config ; 
 scalar_t__ context ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  freeHintsCallback ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hintsCallback ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char**,long) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 long long FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char**,int) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 long FUNC31 (char*,char**,int) ; 

__attribute__((used)) static void FUNC32(void) {
    sds historyfile = NULL;
    int history = 0;
    char *line;
    int argc;
    sds *argv;

    /* Initialize the help and, if possible, use the COMMAND command in order
     * to retrieve missing entries. */
    FUNC2();
    FUNC3();

    config.interactive = 1;
    FUNC24(1);
    FUNC21(completionCallback);
    FUNC23(hintsCallback);
    FUNC22(freeHintsCallback);

    /* Only use history and load the rc file when stdin is a tty. */
    if (FUNC13(FUNC10(stdin))) {
        historyfile = FUNC12(REDIS_CLI_HISTFILE_ENV,REDIS_CLI_HISTFILE_DEFAULT);
        //keep in-memory history always regardless if history file can be determined
        history = 1;
        if (historyfile != NULL) {
            FUNC19(historyfile);
        }
        FUNC4();
    }

    FUNC6();
    while((line = FUNC15(context ? config.prompt : "not connected> ")) != NULL) {
        if (line[0] != '\0') {
            long repeat = 1;
            int skipargs = 0;
            char *endptr = NULL;

            argv = FUNC8(line,&argc);

            /* check if we have a repeat command option and
             * need to skip the first arg */
            if (argv && argc > 0) {
                errno = 0;
                repeat = FUNC31(argv[0], &endptr, 10);
                if (argc > 1 && *endptr == '\0') {
                    if (errno == ERANGE || errno == EINVAL || repeat <= 0) {
                        FUNC11("Invalid redis-cli repeat command option value.\n", stdout);
                        FUNC28(argv, argc);
                        FUNC17(line);
                        continue;
                    }
                    skipargs = 1;
                } else {
                    repeat = 1;
                }
            }

            /* Won't save auth command in history file */
            if (!(argv && argc > 0 && !FUNC30(argv[0+skipargs], "auth"))) {
                if (history) FUNC18(line);
                if (historyfile) FUNC20(historyfile);
            }

            if (argv == NULL) {
                FUNC26("Invalid argument(s)\n");
                FUNC17(line);
                continue;
            } else if (argc > 0) {
                if (FUNC30(argv[0],"quit") == 0 ||
                    FUNC30(argv[0],"exit") == 0)
                {
                    FUNC9(0);
                } else if (argv[0][0] == ':') {
                    FUNC7(argv,argc,1);
                    FUNC28(argv,argc);
                    FUNC17(line);
                    continue;
                } else if (FUNC30(argv[0],"restart") == 0) {
                    if (config.eval) {
                        config.eval_ldb = 1;
                        config.output = OUTPUT_RAW;
                        return; /* Return to evalMode to restart the session. */
                    } else {
                        FUNC26("Use 'restart' only in Lua debugging mode.");
                    }
                } else if (argc == 3 && !FUNC30(argv[0],"connect")) {
                    FUNC27(config.hostip);
                    config.hostip = FUNC29(argv[1]);
                    config.hostport = FUNC0(argv[2]);
                    FUNC6();
                    FUNC1(CC_FORCE);
                } else if (argc == 1 && !FUNC30(argv[0],"clear")) {
                    FUNC16();
                } else {
                    long long start_time = FUNC25(), elapsed;

                    FUNC14(argc-skipargs, argv+skipargs, repeat);

                    /* If our debugging session ended, show the EVAL final
                     * reply. */
                    if (config.eval_ldb_end) {
                        config.eval_ldb_end = 0;
                        FUNC5(0);
                        FUNC26("\n(Lua debugging session ended%s)\n\n",
                            config.eval_ldb_sync ? "" :
                            " -- dataset changes rolled back");
                    }

                    elapsed = FUNC25()-start_time;
                    if (elapsed >= 500 &&
                        config.output == OUTPUT_STANDARD)
                    {
                        FUNC26("(%.2fs)\n",(double)elapsed/1000);
                    }
                }
            }
            /* Free the argument vector */
            FUNC28(argv,argc);
        }
        /* linenoise() returns malloc-ed lines like readline() */
        FUNC17(line);
    }
    FUNC9(0);
}