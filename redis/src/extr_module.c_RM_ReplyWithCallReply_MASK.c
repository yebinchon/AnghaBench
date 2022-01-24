#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_3__ {int /*<<< orphan*/  protolen; int /*<<< orphan*/  proto; } ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ RedisModuleCallReply ;

/* Variables and functions */
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleCallReply *reply) {
    client *c = FUNC1(ctx);
    if (c == NULL) return REDISMODULE_OK;
    sds proto = FUNC2(reply->proto, reply->protolen);
    FUNC0(c,proto);
    return REDISMODULE_OK;
}