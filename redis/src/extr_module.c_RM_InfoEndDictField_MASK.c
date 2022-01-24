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
struct TYPE_3__ {char* info; scalar_t__ in_dict_field; } ;
typedef  TYPE_1__ RedisModuleInfoCtx ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

int FUNC3(RedisModuleInfoCtx *ctx) {
    if (!ctx->in_dict_field)
        return REDISMODULE_ERR;
    /* trim the last ',' if found. */
    if (ctx->info[FUNC2(ctx->info)-1]==',')
        FUNC0(ctx->info, -1);
    ctx->info = FUNC1(ctx->info, "\r\n");
    ctx->in_dict_field = 0;
    return REDISMODULE_OK;
}