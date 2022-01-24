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
typedef  scalar_t__ uint64_t ;
typedef  void* RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ REDISMODULE_SUBEVENT_MASTER_LINK_UP ; 

void FUNC2(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC1(e);
    FUNC1(data);

    char *keyname = (sub == REDISMODULE_SUBEVENT_MASTER_LINK_UP) ?
        "masterlink-up" : "masterlink-down";
    FUNC0(ctx, keyname, 0);
}