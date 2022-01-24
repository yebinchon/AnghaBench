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
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 scalar_t__ REDISMODULE_REPLY_INTEGER ; 
 long long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,long long,...) ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleCallReply *reply, long long expected) {
    if (FUNC1(reply) != REDISMODULE_REPLY_INTEGER) {
        FUNC2(ctx,"warning","Unexpected reply type %d",
            FUNC1(reply));
        return 0;
    }
    long long val = FUNC0(reply);
    if (val != expected) {
        FUNC2(ctx,"warning",
            "Unexpected integer reply '%lld' (instead of '%lld')",
            val, expected);
        return 0;
    }
    return 1;
}