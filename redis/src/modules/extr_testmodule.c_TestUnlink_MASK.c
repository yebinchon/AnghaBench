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
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 

int FUNC10(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC1(ctx);
    FUNC0(argv);
    FUNC0(argc);

    RedisModuleKey *k = FUNC5(ctx, FUNC4(ctx, "unlinked"), REDISMODULE_WRITE | REDISMODULE_READ);
    if (!k) return FUNC9(ctx, "Could not create key");

    if (REDISMODULE_ERR == FUNC7(k, FUNC4(ctx, "Foobar"))) {
        return FUNC9(ctx, "Could not set string value");
    }

    RedisModuleCallReply *rep = FUNC2(ctx, "EXISTS", "c", "unlinked");
    if (!rep || FUNC3(rep) != 1) {
        return FUNC9(ctx, "Key does not exist before unlink");
    }

    if (REDISMODULE_ERR == FUNC8(k)) {
        return FUNC9(ctx, "Could not unlink key");
    }

    rep = FUNC2(ctx, "EXISTS", "c", "unlinked");
    if (!rep || FUNC3(rep) != 0) {
        return FUNC9(ctx, "Could not verify key to be unlinked");
    }
    return FUNC6(ctx, "OK");

}