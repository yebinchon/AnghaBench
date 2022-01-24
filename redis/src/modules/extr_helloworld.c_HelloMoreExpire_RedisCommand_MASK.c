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
typedef  scalar_t__ mstime_t ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 scalar_t__ REDISMODULE_NO_EXPIRE ; 
 scalar_t__ REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */
    if (argc != 3) return FUNC7(ctx);

    mstime_t addms, expire;

    if (FUNC6(argv[2],&addms) != REDISMODULE_OK)
        return FUNC3(ctx,"ERR invalid expire time");

    RedisModuleKey *key = FUNC2(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    expire = FUNC1(key);
    if (expire != REDISMODULE_NO_EXPIRE) {
        expire += addms;
        FUNC5(key,expire);
    }
    return FUNC4(ctx,"OK");
}