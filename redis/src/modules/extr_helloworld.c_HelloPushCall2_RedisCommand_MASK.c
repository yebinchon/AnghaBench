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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 3) return FUNC3(ctx);

    RedisModuleCallReply *reply;

    reply = FUNC0(ctx,"RPUSH","ss",argv[1],argv[2]);
    FUNC2(ctx,reply);
    FUNC1(reply);
    return REDISMODULE_OK;
}