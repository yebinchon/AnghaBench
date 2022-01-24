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
struct TYPE_3__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  free; int /*<<< orphan*/  mem_usage; int /*<<< orphan*/  aof_rewrite; int /*<<< orphan*/  rdb_save; int /*<<< orphan*/  rdb_load; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ RedisModuleTypeMethods ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/ * HelloType ; 
 int /*<<< orphan*/  HelloTypeAofRewrite ; 
 int /*<<< orphan*/  HelloTypeBRange_RedisCommand ; 
 int /*<<< orphan*/  HelloTypeDigest ; 
 int /*<<< orphan*/  HelloTypeFree ; 
 int /*<<< orphan*/  HelloTypeInsert_RedisCommand ; 
 int /*<<< orphan*/  HelloTypeLen_RedisCommand ; 
 int /*<<< orphan*/  HelloTypeMemUsage ; 
 int /*<<< orphan*/  HelloTypeRange_RedisCommand ; 
 int /*<<< orphan*/  HelloTypeRdbLoad ; 
 int /*<<< orphan*/  HelloTypeRdbSave ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_TYPE_METHOD_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

int FUNC4(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC3(ctx,"hellotype",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    RedisModuleTypeMethods tm = {
        .version = REDISMODULE_TYPE_METHOD_VERSION,
        .rdb_load = HelloTypeRdbLoad,
        .rdb_save = HelloTypeRdbSave,
        .aof_rewrite = HelloTypeAofRewrite,
        .mem_usage = HelloTypeMemUsage,
        .free = HelloTypeFree,
        .digest = HelloTypeDigest
    };

    HelloType = FUNC2(ctx,"hellotype",0,&tm);
    if (HelloType == NULL) return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellotype.insert",
        HelloTypeInsert_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellotype.range",
        HelloTypeRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellotype.len",
        HelloTypeLen_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellotype.brange",
        HelloTypeBRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}