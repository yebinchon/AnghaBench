#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  id ;
struct TYPE_8__ {scalar_t__ module; } ;
struct TYPE_7__ {scalar_t__ module; void* data; } ;
typedef  int /*<<< orphan*/  RedisModuleTimerID ;
typedef  TYPE_1__ RedisModuleTimer ;
typedef  TYPE_2__ RedisModuleCtx ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  Timers ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 TYPE_1__* raxNotFound ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleTimerID id, void **data) {
    RedisModuleTimer *timer = FUNC0(Timers,(unsigned char*)&id,sizeof(id));
    if (timer == raxNotFound || timer->module != ctx->module)
        return REDISMODULE_ERR;
    if (data) *data = timer->data;
    FUNC1(Timers,(unsigned char*)&id,sizeof(id),NULL);
    FUNC2(timer);
    return REDISMODULE_OK;
}