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
 int /*<<< orphan*/  HelloHCopy_RedisCommand ; 
 int /*<<< orphan*/  HelloLeftPad_RedisCommand ; 
 int /*<<< orphan*/  HelloLexRange_RedisCommand ; 
 int /*<<< orphan*/  HelloListSpliceAuto_RedisCommand ; 
 int /*<<< orphan*/  HelloListSplice_RedisCommand ; 
 int /*<<< orphan*/  HelloListSumLen_RedisCommand ; 
 int /*<<< orphan*/  HelloMoreExpire_RedisCommand ; 
 int /*<<< orphan*/  HelloPushCall2_RedisCommand ; 
 int /*<<< orphan*/  HelloPushCall_RedisCommand ; 
 int /*<<< orphan*/  HelloPushNative_RedisCommand ; 
 int /*<<< orphan*/  HelloRandArray_RedisCommand ; 
 int /*<<< orphan*/  HelloRepl1_RedisCommand ; 
 int /*<<< orphan*/  HelloRepl2_RedisCommand ; 
 int /*<<< orphan*/  HelloSimple_RedisCommand ; 
 int /*<<< orphan*/  HelloToggleCase_RedisCommand ; 
 int /*<<< orphan*/  HelloZsumRange_RedisCommand ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (FUNC1(ctx,"helloworld",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    /* Log the list of parameters passing loading the module. */
    for (int j = 0; j < argc; j++) {
        const char *s = FUNC2(argv[j],NULL);
        FUNC3("Module loaded with ARGV[%d] = %s\n", j, s);
    }

    if (FUNC0(ctx,"hello.simple",
        HelloSimple_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.push.native",
        HelloPushNative_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.push.call",
        HelloPushCall_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.push.call2",
        HelloPushCall2_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.list.sum.len",
        HelloListSumLen_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.list.splice",
        HelloListSplice_RedisCommand,"write deny-oom",1,2,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.list.splice.auto",
        HelloListSpliceAuto_RedisCommand,
        "write deny-oom",1,2,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.rand.array",
        HelloRandArray_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.repl1",
        HelloRepl1_RedisCommand,"write",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.repl2",
        HelloRepl2_RedisCommand,"write",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.toggle.case",
        HelloToggleCase_RedisCommand,"write",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.more.expire",
        HelloMoreExpire_RedisCommand,"write",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.zsumrange",
        HelloZsumRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.lexrange",
        HelloLexRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.hcopy",
        HelloHCopy_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"hello.leftpad",
        HelloLeftPad_RedisCommand,"",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}