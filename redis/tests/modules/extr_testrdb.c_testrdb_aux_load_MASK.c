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
typedef  int /*<<< orphan*/  RedisModuleIO ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int REDISMODULE_AUX_AFTER_RDB ; 
 int REDISMODULE_AUX_BEFORE_RDB ; 
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * after_str ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * before_str ; 
 int conf_aux_count ; 

int FUNC6(RedisModuleIO *rdb, int encver, int when) {
    FUNC5(encver == 1);
    if (conf_aux_count==1) FUNC5(when == REDISMODULE_AUX_AFTER_RDB);
    if (conf_aux_count==0) FUNC5(0);
    RedisModuleCtx *ctx = FUNC1(rdb);
    if (when == REDISMODULE_AUX_BEFORE_RDB) {
        if (before_str)
            FUNC0(ctx, before_str);
        before_str = NULL;
        int count = FUNC3(rdb);
        if (FUNC2(rdb))
            return REDISMODULE_ERR;
        if (count)
            before_str = FUNC4(rdb);
    } else {
        if (after_str)
            FUNC0(ctx, after_str);
        after_str = NULL;
        int count = FUNC3(rdb);
        if (FUNC2(rdb))
            return REDISMODULE_ERR;
        if (count)
            after_str = FUNC4(rdb);
    }
    if (FUNC2(rdb))
        return REDISMODULE_ERR;
    return REDISMODULE_OK;
}