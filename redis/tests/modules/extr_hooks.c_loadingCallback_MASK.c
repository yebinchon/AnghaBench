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
typedef  int uint64_t ;
typedef  void* RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
#define  REDISMODULE_SUBEVENT_LOADING_AOF_START 132 
#define  REDISMODULE_SUBEVENT_LOADING_ENDED 131 
#define  REDISMODULE_SUBEVENT_LOADING_FAILED 130 
#define  REDISMODULE_SUBEVENT_LOADING_RDB_START 129 
#define  REDISMODULE_SUBEVENT_LOADING_REPL_START 128 

void FUNC2(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC1(e);
    FUNC1(data);

    char *keyname = NULL;
    switch (sub) {
        case REDISMODULE_SUBEVENT_LOADING_RDB_START: keyname = "loading-rdb-start"; break;
        case REDISMODULE_SUBEVENT_LOADING_AOF_START: keyname = "loading-aof-start"; break;
        case REDISMODULE_SUBEVENT_LOADING_REPL_START: keyname = "loading-repl-start"; break;
        case REDISMODULE_SUBEVENT_LOADING_ENDED: keyname = "loading-end"; break;
        case REDISMODULE_SUBEVENT_LOADING_FAILED: keyname = "loading-failed"; break;
    }
    FUNC0(ctx, keyname, 0);
}