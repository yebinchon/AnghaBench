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
 char* REDISMODULE_ERRORMSG_WRONGTYPE ; 
 scalar_t__ REDISMODULE_KEYTYPE_ZSET ; 
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_POSTPONED_ARRAY_LEN ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */

    if (argc != 6) return FUNC9(ctx);

    RedisModuleKey *key = FUNC4(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    if (FUNC3(key) != REDISMODULE_KEYTYPE_ZSET) {
        return FUNC7(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    if (FUNC10(key,argv[2],argv[3]) != REDISMODULE_OK) {
        return FUNC7(ctx,"invalid range");
    }

    int arraylen = 0;
    FUNC6(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    while(!FUNC12(key)) {
        double score;
        RedisModuleString *ele = FUNC11(key,&score);
        FUNC8(ctx,ele);
        FUNC2(ctx,ele);
        FUNC13(key);
        arraylen++;
    }
    FUNC14(key);
    FUNC5(ctx,arraylen);
    FUNC1(key);
    return REDISMODULE_OK;
}