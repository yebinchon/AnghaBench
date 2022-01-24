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
struct HelloTypeObject {struct HelloTypeNode* head; } ;
struct HelloTypeNode {struct HelloTypeNode* next; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleKey ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 scalar_t__ HelloType ; 
 char* REDISMODULE_ERRORMSG_WRONGTYPE ; 
 int REDISMODULE_KEYTYPE_EMPTY ; 
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_POSTPONED_ARRAY_LEN ; 
 int REDISMODULE_READ ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct HelloTypeObject* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */

    if (argc != 4) return FUNC10(ctx);
    RedisModuleKey *key = FUNC4(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = FUNC1(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        FUNC2(key) != HelloType)
    {
        return FUNC7(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long first, count;
    if (FUNC9(argv[2],&first) != REDISMODULE_OK ||
        FUNC9(argv[3],&count) != REDISMODULE_OK ||
        first < 0 || count < 0)
    {
        return FUNC7(ctx,
            "ERR invalid first or count parameters");
    }

    struct HelloTypeObject *hto = FUNC3(key);
    struct HelloTypeNode *node = hto ? hto->head : NULL;
    FUNC6(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    long long arraylen = 0;
    while(node && count--) {
        FUNC8(ctx,node->value);
        arraylen++;
        node = node->next;
    }
    FUNC5(ctx,arraylen);
    return REDISMODULE_OK;
}