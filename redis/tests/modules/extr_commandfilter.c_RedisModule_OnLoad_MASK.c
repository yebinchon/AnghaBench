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
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  CommandFilter_CommandFilter ; 
 int /*<<< orphan*/  CommandFilter_LogCommand ; 
 int /*<<< orphan*/  CommandFilter_PingCommand ; 
 int /*<<< orphan*/  CommandFilter_UnregisterCommand ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 int /*<<< orphan*/  REDISMODULE_CMDFILTER_NOSELF ; 
 scalar_t__ REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long long*) ; 
 int /*<<< orphan*/ * filter ; 
 int /*<<< orphan*/  log_command_name ; 
 int /*<<< orphan*/  log_key_name ; 
 int /*<<< orphan*/  ping_command_name ; 
 int /*<<< orphan*/  unregister_command_name ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (FUNC2(ctx,"commandfilter",1,REDISMODULE_APIVER_1)
            == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (argc != 2) {
        FUNC3(ctx, "warning", "Log key name not specified");
        return REDISMODULE_ERR;
    }

    long long noself = 0;
    log_key_name = FUNC1(ctx, argv[0]);
    FUNC5(argv[1], &noself);

    if (FUNC0(ctx,log_command_name,
                CommandFilter_LogCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if (FUNC0(ctx,ping_command_name,
                CommandFilter_PingCommand,"deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if (FUNC0(ctx,unregister_command_name,
                CommandFilter_UnregisterCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if ((filter = FUNC4(ctx, CommandFilter_CommandFilter, 
                    noself ? REDISMODULE_CMDFILTER_NOSELF : 0))
            == NULL) return REDISMODULE_ERR;

    return REDISMODULE_OK;
}