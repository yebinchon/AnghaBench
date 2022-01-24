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
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_LIST_HEAD ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t*) ; 
 int in_log_command ; 
 int /*<<< orphan*/  log_key_name ; 

int FUNC11(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    RedisModuleString *s = FUNC2(ctx, "", 0);

    int i;
    for (i = 1; i < argc; i++) {
        size_t arglen;
        const char *arg = FUNC10(argv[i], &arglen);

        if (i > 1) FUNC9(ctx, s, " ", 1);
        FUNC9(ctx, s, arg, arglen);
    }

    RedisModuleKey *log = FUNC6(ctx, log_key_name, REDISMODULE_WRITE|REDISMODULE_READ);
    FUNC5(log, REDISMODULE_LIST_HEAD, s);
    FUNC1(log);
    FUNC4(ctx, s);

    in_log_command = 1;

    size_t cmdlen;
    const char *cmdname = FUNC10(argv[1], &cmdlen);
    RedisModuleCallReply *reply = FUNC0(ctx, cmdname, "v", &argv[2], argc - 2);
    if (reply) {
        FUNC7(ctx, reply);
        FUNC3(reply);
    } else {
        FUNC8(ctx, "Unknown command or invalid arguments");
    }

    in_log_command = 0;

    return REDISMODULE_OK;
}