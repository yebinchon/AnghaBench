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
 int REDISMODULE_OK ; 
 int REDISMODULE_OPEN_KEY_NOTOUCH ; 
 int REDISMODULE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long long*,long long*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc<2) {
        FUNC4(ctx);
        return REDISMODULE_OK;
    }
    RedisModuleString *keyname = argv[1];
    RedisModuleKey *key = FUNC2(ctx, keyname, REDISMODULE_READ|REDISMODULE_OPEN_KEY_NOTOUCH);
    long long lru, lfu;
    FUNC1(key, &lfu, &lru);
    FUNC3(ctx, lru);
    FUNC0(key);
    return REDISMODULE_OK;
}