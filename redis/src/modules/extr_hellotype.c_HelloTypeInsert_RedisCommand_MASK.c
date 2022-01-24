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
 int /*<<< orphan*/  FUNC0 (struct HelloTypeObject*,long long) ; 
 char* REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 scalar_t__ REDISMODULE_OK ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct HelloTypeObject* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,struct HelloTypeObject*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 struct HelloTypeObject* FUNC13 () ; 

int FUNC14(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC1(ctx); /* Use automatic memory management. */

    if (argc != 3) return FUNC12(ctx);
    RedisModuleKey *key = FUNC6(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = FUNC2(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        FUNC3(key) != HelloType)
    {
        return FUNC8(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long value;
    if ((FUNC11(argv[2],&value) != REDISMODULE_OK)) {
        return FUNC8(ctx,"ERR invalid value: must be a signed 64 bit integer");
    }

    /* Create an empty value object if the key is currently empty. */
    struct HelloTypeObject *hto;
    if (type == REDISMODULE_KEYTYPE_EMPTY) {
        hto = FUNC13();
        FUNC5(key,HelloType,hto);
    } else {
        hto = FUNC4(key);
    }

    /* Insert the new element. */
    FUNC0(hto,value);
    FUNC10(ctx,argv[1]);

    FUNC9(ctx,hto->len);
    FUNC7(ctx);
    return REDISMODULE_OK;
}