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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    FUNC0(argv);
    FUNC0(argc);
    RedisModuleString *str = FUNC2(ctx);
    FUNC3(ctx, str);
    FUNC1(ctx, str);
    return REDISMODULE_OK;
}