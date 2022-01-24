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
typedef  int /*<<< orphan*/  redisReply ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int eval_ldb; char* eval; int /*<<< orphan*/  prompt; scalar_t__ eval_ldb_sync; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CC_FORCE ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (char*,char*,size_t) ; 
 char* FUNC13 (char*,char*,int) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 char** FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(int argc, char **argv) {
    sds script = NULL;
    FILE *fp;
    char buf[1024];
    size_t nread;
    char **argv2;
    int j, got_comma, keys;
    int retval = REDIS_OK;

    while(1) {
        if (config.eval_ldb) {
            FUNC9(
            "Lua debugging session started, please use:\n"
            "quit    -- End the session.\n"
            "restart -- Restart the script in debug mode again.\n"
            "help    -- Show Lua script debugging commands.\n\n"
            );
        }

        FUNC15(script);
        script = FUNC14();
        got_comma = 0;
        keys = 0;

        /* Load the script from the file, as an sds string. */
        fp = FUNC4(config.eval,"r");
        if (!fp) {
            FUNC5(stderr,
                "Can't open file '%s': %s\n", config.eval, FUNC17(errno));
            FUNC2(1);
        }
        while((nread = FUNC6(buf,1,sizeof(buf),fp)) != 0) {
            script = FUNC12(script,buf,nread);
        }
        FUNC3(fp);

        /* If we are debugging a script, enable the Lua debugger. */
        if (config.eval_ldb) {
            redisReply *reply = FUNC10(context,
                    config.eval_ldb_sync ?
                    "SCRIPT DEBUG sync": "SCRIPT DEBUG yes");
            if (reply) FUNC7(reply);
        }

        /* Create our argument vector */
        argv2 = FUNC19(sizeof(sds)*(argc+3));
        argv2[0] = FUNC16("EVAL");
        argv2[1] = script;
        for (j = 0; j < argc; j++) {
            if (!got_comma && argv[j][0] == ',' && argv[j][1] == 0) {
                got_comma = 1;
                continue;
            }
            argv2[j+3-got_comma] = FUNC16(argv[j]);
            if (!got_comma) keys++;
        }
        argv2[2] = FUNC13(FUNC14(),"%d",keys);

        /* Call it */
        int eval_ldb = config.eval_ldb; /* Save it, may be reverteed. */
        retval = FUNC8(argc+3-got_comma, argv2);
        if (eval_ldb) {
            if (!config.eval_ldb) {
                /* If the debugging session ended immediately, there was an
                 * error compiling the script. Show it and they don't enter
                 * the REPL at all. */
                FUNC9("Eval debugging session can't start:\n");
                FUNC1(0);
                break; /* Return to the caller. */
            } else {
                FUNC18(config.prompt,"lua debugger> ",sizeof(config.prompt));
                FUNC11();
                /* Restart the session if repl() returned. */
                FUNC0(CC_FORCE);
                FUNC9("\n");
            }
        } else {
            break; /* Return to the caller. */
        }
    }
    return retval;
}