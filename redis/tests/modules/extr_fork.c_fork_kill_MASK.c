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
 scalar_t__ REDISMODULE_OK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int child_pid ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    FUNC3(argv);
    FUNC3(argc);
    if (FUNC0(child_pid) != REDISMODULE_OK)
        FUNC1(ctx, "KillForkChild failed");
    else
        FUNC2(ctx, 1);
    child_pid = -1;
    return REDISMODULE_OK;
}