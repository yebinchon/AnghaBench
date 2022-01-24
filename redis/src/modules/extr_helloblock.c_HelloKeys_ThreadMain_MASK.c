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
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleCallReply ;
typedef  int /*<<< orphan*/  RedisModuleBlockedClient ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_POSTPONED_ARRAY_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*,long long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void *FUNC15(void *arg) {
    RedisModuleBlockedClient *bc = arg;
    RedisModuleCtx *ctx = FUNC7(bc);
    long long cursor = 0;
    size_t replylen = 0;

    FUNC9(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    do {
        FUNC12(ctx);
        RedisModuleCallReply *reply = FUNC0(ctx,
            "SCAN","l",(long long)cursor);
        FUNC13(ctx);

        RedisModuleCallReply *cr_cursor =
            FUNC1(reply,0);
        RedisModuleCallReply *cr_keys =
            FUNC1(reply,1);

        RedisModuleString *s = FUNC3(cr_cursor);
        FUNC11(s,&cursor);
        FUNC5(ctx,s);

        size_t items = FUNC2(cr_keys);
        for (size_t j = 0; j < items; j++) {
            RedisModuleCallReply *ele =
                FUNC1(cr_keys,j);
            FUNC10(ctx,ele);
            replylen++;
        }
        FUNC4(reply);
    } while (cursor != 0);
    FUNC8(ctx,replylen);

    FUNC6(ctx);
    FUNC14(bc,NULL);
    return NULL;
}