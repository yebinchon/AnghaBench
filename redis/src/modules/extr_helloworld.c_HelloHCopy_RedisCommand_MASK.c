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
 int /*<<< orphan*/  REDISMODULE_HASH_NONE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 int REDISMODULE_KEYTYPE_HASH ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */

    if (argc != 4) return FUNC7(ctx);
    RedisModuleKey *key = FUNC4(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = FUNC3(key);
    if (type != REDISMODULE_KEYTYPE_HASH &&
        type != REDISMODULE_KEYTYPE_EMPTY)
    {
        return FUNC5(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    /* Get the old field value. */
    RedisModuleString *oldval;
    FUNC1(key,REDISMODULE_HASH_NONE,argv[2],&oldval,NULL);
    if (oldval) {
        FUNC2(key,REDISMODULE_HASH_NONE,argv[3],oldval,NULL);
    }
    FUNC6(ctx,oldval != NULL);
    return REDISMODULE_OK;
}