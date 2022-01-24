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
struct HelloTypeObject {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 scalar_t__ HelloType ; 
 int /*<<< orphan*/  REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct HelloTypeObject* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */

    if (argc != 2) return FUNC7(ctx);
    RedisModuleKey *key = FUNC4(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = FUNC1(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        FUNC2(key) != HelloType)
    {
        return FUNC5(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    struct HelloTypeObject *hto = FUNC3(key);
    FUNC6(ctx,hto ? hto->len : 0);
    return REDISMODULE_OK;
}