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
#define  REDISMODULE_SUBEVENT_PERSISTENCE_AOF_START 132 
#define  REDISMODULE_SUBEVENT_PERSISTENCE_ENDED 131 
#define  REDISMODULE_SUBEVENT_PERSISTENCE_FAILED 130 
#define  REDISMODULE_SUBEVENT_PERSISTENCE_RDB_START 129 
#define  REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 

void FUNC3(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC1(e);
    FUNC1(data);

    char *keyname = NULL;
    switch (sub) {
        case REDISMODULE_SUBEVENT_PERSISTENCE_RDB_START: keyname = "persistence-rdb-start"; break;
        case REDISMODULE_SUBEVENT_PERSISTENCE_AOF_START: keyname = "persistence-aof-start"; break;
        case REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START: keyname = "persistence-syncrdb-start"; break;
        case REDISMODULE_SUBEVENT_PERSISTENCE_ENDED: keyname = "persistence-end"; break;
        case REDISMODULE_SUBEVENT_PERSISTENCE_FAILED: keyname = "persistence-failed"; break;
    }
    /* modifying the keyspace from the fork child is not an option, using log instead */
    FUNC2(ctx, "warning", "module-event-%s", keyname);
    if (sub == REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START)
        FUNC0(ctx, keyname, 0);
}