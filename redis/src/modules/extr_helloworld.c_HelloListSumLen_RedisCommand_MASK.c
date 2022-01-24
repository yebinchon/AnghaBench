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
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 int REDISMODULE_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,long long,long long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2) return FUNC5(ctx);

    RedisModuleCallReply *reply;

    reply = FUNC0(ctx,"LRANGE","sll",argv[1],(long long)0,(long long)-1);
    size_t strlen = 0;
    size_t items = FUNC2(reply);
    size_t j;
    for (j = 0; j < items; j++) {
        RedisModuleCallReply *ele = FUNC1(reply,j);
        strlen += FUNC2(ele);
    }
    FUNC3(reply);
    FUNC4(ctx,strlen);
    return REDISMODULE_OK;
}