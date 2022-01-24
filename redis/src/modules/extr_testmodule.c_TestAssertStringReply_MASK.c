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

/* Variables and functions */
 scalar_t__ REDISMODULE_REPLY_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleCallReply *reply, char *str, size_t len) {
    RedisModuleString *mystr, *expected;

    if (FUNC0(reply) != REDISMODULE_REPLY_STRING) {
        FUNC3(ctx,"warning","Unexpected reply type %d",
            FUNC0(reply));
        return 0;
    }
    mystr = FUNC2(reply);
    expected = FUNC1(ctx,str,len);
    if (FUNC4(mystr,expected) != 0) {
        const char *mystr_ptr = FUNC5(mystr,NULL);
        const char *expected_ptr = FUNC5(expected,NULL);
        FUNC3(ctx,"warning",
            "Unexpected string reply '%s' (instead of '%s')",
            mystr_ptr, expected_ptr);
        return 0;
    }
    return 1;
}