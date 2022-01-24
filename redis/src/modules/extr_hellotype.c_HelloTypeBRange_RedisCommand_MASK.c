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
 int /*<<< orphan*/  HelloBlock_FreeData ; 
 int /*<<< orphan*/  HelloBlock_Reply ; 
 int /*<<< orphan*/  HelloBlock_Timeout ; 
 scalar_t__ HelloType ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 char* REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 scalar_t__ REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,int /*<<< orphan*/ **,int,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 5) return FUNC9(ctx);
    FUNC2(ctx); /* Use automatic memory management. */
    RedisModuleKey *key = FUNC6(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = FUNC4(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        FUNC5(key) != HelloType)
    {
        return FUNC7(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    /* Parse the timeout before even trying to serve the client synchronously,
     * so that we always fail ASAP on syntax errors. */
    long long timeout;
    if (FUNC8(argv[4],&timeout) != REDISMODULE_OK) {
        return FUNC7(ctx,
            "ERR invalid timeout parameter");
    }

    /* Can we serve the reply synchronously? */
    if (type != REDISMODULE_KEYTYPE_EMPTY) {
        return FUNC0(ctx,argv,argc-1);
    }

    /* Otherwise let's block on the key. */
    void *privdata = FUNC1(100);
    FUNC3(ctx,HelloBlock_Reply,HelloBlock_Timeout,HelloBlock_FreeData,timeout,argv+1,1,privdata);
    return REDISMODULE_OK;
}