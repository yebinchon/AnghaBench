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
struct TYPE_3__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ RedisModuleCtx ;

/* Variables and functions */
 int C_OK ; 
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(RedisModuleCtx *ctx, int newid) {
    int retval = FUNC0(ctx->client,newid);
    return (retval == C_OK) ? REDISMODULE_OK : REDISMODULE_ERR;
}