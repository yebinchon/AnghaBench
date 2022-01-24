#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* module; void* info; scalar_t__ in_dict_field; int /*<<< orphan*/  in_section; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ RedisModuleInfoCtx ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 void* FUNC0 (void*,char*,char*,...) ; 

int FUNC1(RedisModuleInfoCtx *ctx, char *field, long long value) {
    if (!ctx->in_section)
        return REDISMODULE_ERR;
    if (ctx->in_dict_field) {
        ctx->info = FUNC0(ctx->info,
            "%s=%I,",
            field,
            value);
        return REDISMODULE_OK;
    }
    ctx->info = FUNC0(ctx->info,
        "%s_%s:%I\r\n",
        ctx->module->name,
        field,
        value);
    return REDISMODULE_OK;
}