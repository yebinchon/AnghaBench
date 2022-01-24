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
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,double*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    double score_start, score_end;
    if (argc != 4) return FUNC8(ctx);

    if (FUNC7(argv[2],&score_start) != REDISMODULE_OK ||
        FUNC7(argv[3],&score_end) != REDISMODULE_OK)
    {
        return FUNC6(ctx,"ERR invalid range");
    }

    RedisModuleKey *key = FUNC3(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    if (FUNC2(key) != REDISMODULE_KEYTYPE_ZSET) {
        return FUNC6(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    double scoresum_a = 0;
    double scoresum_b = 0;

    FUNC9(key,score_start,score_end,0,0);
    while(!FUNC12(key)) {
        double score;
        RedisModuleString *ele = FUNC11(key,&score);
        FUNC1(ctx,ele);
        scoresum_a += score;
        FUNC13(key);
    }
    FUNC15(key);

    FUNC10(key,score_start,score_end,0,0);
    while(!FUNC12(key)) {
        double score;
        RedisModuleString *ele = FUNC11(key,&score);
        FUNC1(ctx,ele);
        scoresum_b += score;
        FUNC14(key);
    }

    FUNC15(key);

    FUNC0(key);

    FUNC4(ctx,2);
    FUNC5(ctx,scoresum_a);
    FUNC5(ctx,scoresum_b);
    return REDISMODULE_OK;
}