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
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  fork_create ; 
 int /*<<< orphan*/  fork_exitcode ; 
 int /*<<< orphan*/  fork_kill ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC2(argv);
    FUNC2(argc);
    if (FUNC1(ctx,"fork",1,REDISMODULE_APIVER_1)== REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"fork.create", fork_create,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"fork.exitcode", fork_exitcode,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC0(ctx,"fork.kill", fork_kill,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}