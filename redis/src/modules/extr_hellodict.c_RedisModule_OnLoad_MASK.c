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
 int /*<<< orphan*/  Keyspace ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_GET ; 
 int /*<<< orphan*/  cmd_KEYRANGE ; 
 int /*<<< orphan*/  cmd_SET ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC3(ctx,"hellodict",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellodict.set",
        cmd_SET,"write deny-oom",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellodict.get",
        cmd_GET,"readonly",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellodict.keyrange",
        cmd_KEYRANGE,"readonly",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    /* Create our global dictionray. Here we'll set our keys and values. */
    Keyspace = FUNC2(NULL);

    return REDISMODULE_OK;
}