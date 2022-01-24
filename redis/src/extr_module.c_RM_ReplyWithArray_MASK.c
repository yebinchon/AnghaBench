#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  client ;
struct TYPE_4__ {int postponed_arrays_count; int /*<<< orphan*/ * postponed_arrays; } ;
typedef  TYPE_1__ RedisModuleCtx ;

/* Variables and functions */
 int REDISMODULE_OK ; 
 long REDISMODULE_POSTPONED_ARRAY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(RedisModuleCtx *ctx, long len) {
    client *c = FUNC2(ctx);
    if (c == NULL) return REDISMODULE_OK;
    if (len == REDISMODULE_POSTPONED_ARRAY_LEN) {
        ctx->postponed_arrays = FUNC3(ctx->postponed_arrays,sizeof(void*)*
                (ctx->postponed_arrays_count+1));
        ctx->postponed_arrays[ctx->postponed_arrays_count] =
            FUNC1(c);
        ctx->postponed_arrays_count++;
    } else {
        FUNC0(c,len);
    }
    return REDISMODULE_OK;
}