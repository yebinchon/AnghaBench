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
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_ERRORMSG_WRONGTYPE ; 
 scalar_t__ REDISMODULE_KEYTYPE_LIST ; 
 int /*<<< orphan*/  REDISMODULE_LIST_HEAD ; 
 int /*<<< orphan*/  REDISMODULE_LIST_TAIL ; 
 scalar_t__ REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,long long*) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return FUNC11(ctx);

    FUNC0(ctx); /* Use automatic memory management. */
    RedisModuleKey *key = FUNC5(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);

    if (FUNC2(key) != REDISMODULE_KEYTYPE_LIST)
        return FUNC7(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);

    size_t listlen = FUNC10(key);
    long long sum = 0;

    /* Rotate and increment. */
    while(listlen--) {
        RedisModuleString *ele = FUNC3(key,REDISMODULE_LIST_TAIL);
        long long val;
        if (FUNC9(ele,&val) != REDISMODULE_OK) val = 0;
        val++;
        sum += val;
        RedisModuleString *newele = FUNC1(ctx,val);
        FUNC4(key,REDISMODULE_LIST_HEAD,newele);
    }
    FUNC8(ctx,sum);
    FUNC6(ctx);
    return REDISMODULE_OK;
}