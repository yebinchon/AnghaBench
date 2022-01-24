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
 int /*<<< orphan*/  REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 int REDISMODULE_KEYTYPE_STRING ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,size_t*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char) ; 
 char FUNC9 (char) ; 
 char FUNC10 (char) ; 

int FUNC11(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return FUNC7(ctx);

    RedisModuleKey *key = FUNC2(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);

    int keytype = FUNC1(key);
    if (keytype != REDISMODULE_KEYTYPE_STRING &&
        keytype != REDISMODULE_KEYTYPE_EMPTY)
    {
        FUNC0(key);
        return FUNC4(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    if (keytype == REDISMODULE_KEYTYPE_STRING) {
        size_t len, j;
        char *s = FUNC6(key,&len,REDISMODULE_WRITE);
        for (j = 0; j < len; j++) {
            if (FUNC8(s[j])) {
                s[j] = FUNC9(s[j]);
            } else {
                s[j] = FUNC10(s[j]);
            }
        }
    }

    FUNC0(key);
    FUNC5(ctx,"OK");
    FUNC3(ctx);
    return REDISMODULE_OK;
}