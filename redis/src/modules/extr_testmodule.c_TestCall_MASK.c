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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 long long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    FUNC1(ctx);
    RedisModuleCallReply *reply;

    FUNC2(ctx,"DEL","c","mylist");
    RedisModuleString *mystr = FUNC5(ctx,"foo",3);
    FUNC2(ctx,"RPUSH","csl","mylist",mystr,(long long)1234);
    reply = FUNC2(ctx,"LRANGE","ccc","mylist","0","-1");
    long long items = FUNC4(reply);
    if (items != 2) goto fail;

    RedisModuleCallReply *item0, *item1;

    item0 = FUNC3(reply,0);
    item1 = FUNC3(reply,1);
    if (!FUNC7(item0,"foo")) goto fail;
    if (!FUNC7(item1,"1234")) goto fail;

    FUNC6(ctx,"OK");
    return REDISMODULE_OK;

fail:
    FUNC6(ctx,"ERR");
    return REDISMODULE_OK;
}