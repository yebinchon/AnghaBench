#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  client ;
struct TYPE_6__ {size_t postponed_arrays_count; int /*<<< orphan*/ * postponed_arrays; TYPE_1__* module; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(RedisModuleCtx *ctx, long len) {
    client *c = FUNC0(ctx);
    if (c == NULL) return;
    if (ctx->postponed_arrays_count == 0) {
        FUNC1(LL_WARNING,
            "API misuse detected in module %s: "
            "RedisModule_ReplySetArrayLength() called without previous "
            "RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN) "
            "call.", ctx->module->name);
            return;
    }
    ctx->postponed_arrays_count--;
    FUNC2(c,
            ctx->postponed_arrays[ctx->postponed_arrays_count],
            len);
    if (ctx->postponed_arrays_count == 0) {
        FUNC3(ctx->postponed_arrays);
        ctx->postponed_arrays = NULL;
    }
}