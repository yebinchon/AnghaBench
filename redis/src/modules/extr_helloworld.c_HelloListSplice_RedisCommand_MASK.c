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
 scalar_t__ REDISMODULE_KEYTYPE_EMPTY ; 
 scalar_t__ REDISMODULE_KEYTYPE_LIST ; 
 int /*<<< orphan*/  REDISMODULE_LIST_HEAD ; 
 int /*<<< orphan*/  REDISMODULE_LIST_TAIL ; 
 scalar_t__ REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,long long*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 4) return FUNC10(ctx);

    RedisModuleKey *srckey = FUNC5(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    RedisModuleKey *dstkey = FUNC5(ctx,argv[2],
        REDISMODULE_READ|REDISMODULE_WRITE);

    /* Src and dst key must be empty or lists. */
    if ((FUNC2(srckey) != REDISMODULE_KEYTYPE_LIST &&
         FUNC2(srckey) != REDISMODULE_KEYTYPE_EMPTY) ||
        (FUNC2(dstkey) != REDISMODULE_KEYTYPE_LIST &&
         FUNC2(dstkey) != REDISMODULE_KEYTYPE_EMPTY))
    {
        FUNC0(srckey);
        FUNC0(dstkey);
        return FUNC6(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long count;
    if ((FUNC8(argv[3],&count) != REDISMODULE_OK) ||
        (count < 0)) {
        FUNC0(srckey);
        FUNC0(dstkey);
        return FUNC6(ctx,"ERR invalid count");
    }

    while(count-- > 0) {
        RedisModuleString *ele;

        ele = FUNC3(srckey,REDISMODULE_LIST_TAIL);
        if (ele == NULL) break;
        FUNC4(dstkey,REDISMODULE_LIST_HEAD,ele);
        FUNC1(ctx,ele);
    }

    size_t len = FUNC9(srckey);
    FUNC0(srckey);
    FUNC0(dstkey);
    FUNC7(ctx,len);
    return REDISMODULE_OK;
}