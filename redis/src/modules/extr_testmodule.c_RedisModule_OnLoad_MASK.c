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
 int /*<<< orphan*/  NotifyCallback ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int REDISMODULE_NOTIFY_HASH ; 
 int REDISMODULE_NOTIFY_KEY_MISS ; 
 int REDISMODULE_NOTIFY_SET ; 
 int REDISMODULE_NOTIFY_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TestCall ; 
 int /*<<< orphan*/  TestCtxFlags ; 
 int /*<<< orphan*/  TestIt ; 
 int /*<<< orphan*/  TestNotifications ; 
 int /*<<< orphan*/  TestStringAppend ; 
 int /*<<< orphan*/  TestStringAppendAM ; 
 int /*<<< orphan*/  TestStringPrintf ; 
 int /*<<< orphan*/  TestUnlink ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC2(ctx,"test",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.call",
        TestCall,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.string.append",
        TestStringAppend,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.string.append.am",
        TestStringAppendAM,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.string.printf",
        TestStringPrintf,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.ctxflags",
        TestCtxFlags,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.unlink",
        TestUnlink,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"test.it",
        TestIt,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    FUNC3(ctx,
                                            REDISMODULE_NOTIFY_HASH |
                                            REDISMODULE_NOTIFY_SET |
                                            REDISMODULE_NOTIFY_STRING |
                                            REDISMODULE_NOTIFY_KEY_MISS,
                                        NotifyCallback);
    if (FUNC1(ctx,"test.notify",
        TestNotifications,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}