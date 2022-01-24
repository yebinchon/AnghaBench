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
struct TYPE_2__ {int eval_ldb; int shutdown; int monitor_mode; int pubsub_mode; int slave_mode; int enable_ldb_on_eval; scalar_t__ output; scalar_t__ last_cmd_type; scalar_t__ interval; scalar_t__ cluster_reissue_command; int /*<<< orphan*/  dbnum; } ;

/* Variables and functions */
 scalar_t__ OUTPUT_RAW ; 
 int REDIS_ERR ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/ * context ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char const**,size_t*) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (size_t*) ; 
 size_t* FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(int argc, char **argv, long repeat) {
    char *command = argv[0];
    size_t *argvlen;
    int j, output_raw;

    if (!config.eval_ldb && /* In debugging mode, let's pass "help" to Redis. */
        (!FUNC11(command,"help") || !FUNC11(command,"?"))) {
        FUNC1(--argc, ++argv);
        return REDIS_OK;
    }

    if (context == NULL) return REDIS_ERR;

    output_raw = 0;
    if (!FUNC11(command,"info") ||
        !FUNC11(command,"lolwut") ||
        (argc >= 2 && !FUNC11(command,"debug") &&
                       !FUNC11(argv[1],"htstats")) ||
        (argc >= 2 && !FUNC11(command,"debug") &&
                       !FUNC11(argv[1],"htstats-key")) ||
        (argc >= 2 && !FUNC11(command,"memory") &&
                      (!FUNC11(argv[1],"malloc-stats") ||
                       !FUNC11(argv[1],"doctor"))) ||
        (argc == 2 && !FUNC11(command,"cluster") &&
                      (!FUNC11(argv[1],"nodes") ||
                       !FUNC11(argv[1],"info"))) ||
        (argc >= 2 && !FUNC11(command,"client") &&
                       !FUNC11(argv[1],"list")) ||
        (argc == 3 && !FUNC11(command,"latency") &&
                       !FUNC11(argv[1],"graph")) ||
        (argc == 2 && !FUNC11(command,"latency") &&
                       !FUNC11(argv[1],"doctor")))
    {
        output_raw = 1;
    }

    if (!FUNC11(command,"shutdown")) config.shutdown = 1;
    if (!FUNC11(command,"monitor")) config.monitor_mode = 1;
    if (!FUNC11(command,"subscribe") ||
        !FUNC11(command,"psubscribe")) config.pubsub_mode = 1;
    if (!FUNC11(command,"sync") ||
        !FUNC11(command,"psync")) config.slave_mode = 1;

    /* When the user manually calls SCRIPT DEBUG, setup the activation of
     * debugging mode on the next eval if needed. */
    if (argc == 3 && !FUNC11(argv[0],"script") &&
                     !FUNC11(argv[1],"debug"))
    {
        if (!FUNC11(argv[2],"yes") || !FUNC11(argv[2],"sync")) {
            config.enable_ldb_on_eval = 1;
        } else {
            config.enable_ldb_on_eval = 0;
        }
    }

    /* Actually activate LDB on EVAL if needed. */
    if (!FUNC11(command,"eval") && config.enable_ldb_on_eval) {
        config.eval_ldb = 1;
        config.output = OUTPUT_RAW;
    }

    /* Setup argument length */
    argvlen = FUNC14(argc*sizeof(size_t));
    for (j = 0; j < argc; j++)
        argvlen[j] = FUNC9(argv[j]);

    /* Negative repeat is allowed and causes infinite loop,
       works well with the interval option. */
    while(repeat < 0 || repeat-- > 0) {
        FUNC8(context,argc,(const char**)argv,argvlen);
        while (config.monitor_mode) {
            if (FUNC2(output_raw) != REDIS_OK) FUNC5(1);
            FUNC6(stdout);
        }

        if (config.pubsub_mode) {
            if (config.output != OUTPUT_RAW)
                FUNC7("Reading messages... (press Ctrl-C to quit)\n");
            while (1) {
                if (FUNC2(output_raw) != REDIS_OK) FUNC5(1);
            }
        }

        if (config.slave_mode) {
            FUNC7("Entering replica output mode...  (press Ctrl-C to quit)\n");
            FUNC10();
            config.slave_mode = 0;
            FUNC13(argvlen);
            return REDIS_ERR;  /* Error = slaveMode lost connection to master */
        }

        if (FUNC2(output_raw) != REDIS_OK) {
            FUNC13(argvlen);
            return REDIS_ERR;
        } else {
            /* Store database number when SELECT was successfully executed. */
            if (!FUNC11(command,"select") && argc == 2 && config.last_cmd_type != REDIS_REPLY_ERROR) {
                config.dbnum = FUNC0(argv[1]);
                FUNC3();
            } else if (!FUNC11(command,"auth") && (argc == 2 || argc == 3))
            {
                FUNC4();
            }
        }
        if (config.cluster_reissue_command){
            /* If we need to reissue the command, break to prevent a
               further 'repeat' number of dud interations */
            break;
        }
        if (config.interval) FUNC12(config.interval);
        FUNC6(stdout); /* Make it grep friendly */
    }

    FUNC13(argvlen);
    return REDIS_OK;
}