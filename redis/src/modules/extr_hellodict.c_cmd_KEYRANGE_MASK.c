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
typedef  int /*<<< orphan*/  RedisModuleDictIter ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  Keyspace ; 
 scalar_t__ REDISMODULE_ERR ; 
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_POSTPONED_ARRAY_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 4) return FUNC9(ctx);

    /* Parse the count argument. */
    long long count;
    if (FUNC8(argv[3],&count) != REDISMODULE_OK) {
        return FUNC6(ctx,"ERR invalid count");
    }

    /* Seek the iterator. */
    RedisModuleDictIter *iter = FUNC1(
        Keyspace, ">=", argv[1]);

    /* Reply with the matching items. */
    char *key;
    size_t keylen;
    long long replylen = 0; /* Keep track of the amitted array len. */
    FUNC5(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    while((key = FUNC3(iter,&keylen,NULL)) != NULL) {
        if (replylen >= count) break;
        if (FUNC0(iter,"<=",argv[2]) == REDISMODULE_ERR)
            break;
        FUNC7(ctx,key,keylen);
        replylen++;
    }
    FUNC4(ctx,replylen);

    /* Cleanup. */
    FUNC2(iter);
    return REDISMODULE_OK;
}