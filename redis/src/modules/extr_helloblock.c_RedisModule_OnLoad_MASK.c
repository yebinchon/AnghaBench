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
 int /*<<< orphan*/  HelloBlock_RedisCommand ; 
 int /*<<< orphan*/  HelloKeys_RedisCommand ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC2(ctx,"helloblock",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (FUNC1(ctx,"hello.block",
        HelloBlock_RedisCommand,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;
    if (FUNC1(ctx,"hello.keys",
        HelloKeys_RedisCommand,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}