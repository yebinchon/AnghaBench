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
 scalar_t__ HelloType ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int REDISMODULE_ERR ; 
 int REDISMODULE_KEYTYPE_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  REDISMODULE_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC1(argv);
    FUNC1(argc);

    RedisModuleString *keyname = FUNC3(ctx);
    RedisModuleKey *key = FUNC6(ctx,keyname,REDISMODULE_READ);
    int type = FUNC4(key);
    if (type != REDISMODULE_KEYTYPE_MODULE ||
        FUNC5(key) != HelloType)
    {
        FUNC2(key);
        return REDISMODULE_ERR;
    }

    /* In case the key is able to serve our blocked client, let's directly
     * use our original command implementation to make this example simpler. */
    FUNC2(key);
    return FUNC0(ctx,argv,argc-1);
}