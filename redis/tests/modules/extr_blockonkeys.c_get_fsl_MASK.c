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
typedef  int /*<<< orphan*/  fsl_t ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ fsltype ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString *keyname, int mode, int create, fsl_t **fsl, int reply_on_failure) {
    RedisModuleKey *key = FUNC5(ctx, keyname, mode);

    int type = FUNC1(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY && FUNC2(key) != fsltype) {
        FUNC0(key);
        if (reply_on_failure)
            FUNC6(ctx, REDISMODULE_ERRORMSG_WRONGTYPE);
        return 0;
    }

    /* Create an empty value object if the key is currently empty. */
    if (type == REDISMODULE_KEYTYPE_EMPTY) {
        if (!create) {
            /* Key is empty but we cannot create */
            FUNC0(key);
            *fsl = NULL;
            return 1;
        }
        *fsl = FUNC7();
        FUNC4(key, fsltype, *fsl);
    } else {
        *fsl = FUNC3(key);
    }

    FUNC0(key);
    return 1;
}