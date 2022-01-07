
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest; int free; int mem_usage; int aof_rewrite; int rdb_save; int rdb_load; int version; } ;
typedef TYPE_1__ RedisModuleTypeMethods ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int * HelloType ;
 int HelloTypeAofRewrite ;
 int HelloTypeBRange_RedisCommand ;
 int HelloTypeDigest ;
 int HelloTypeFree ;
 int HelloTypeInsert_RedisCommand ;
 int HelloTypeLen_RedisCommand ;
 int HelloTypeMemUsage ;
 int HelloTypeRange_RedisCommand ;
 int HelloTypeRdbLoad ;
 int HelloTypeRdbSave ;
 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int REDISMODULE_TYPE_METHOD_VERSION ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int,int,int) ;
 int * RedisModule_CreateDataType (int *,char*,int ,TYPE_1__*) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx,"hellotype",1,REDISMODULE_APIVER_1)
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

    HelloType = RedisModule_CreateDataType(ctx,"hellotype",0,&tm);
    if (HelloType == ((void*)0)) return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellotype.insert",
        HelloTypeInsert_RedisCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellotype.range",
        HelloTypeRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellotype.len",
        HelloTypeLen_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellotype.brange",
        HelloTypeBRange_RedisCommand,"readonly",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}
