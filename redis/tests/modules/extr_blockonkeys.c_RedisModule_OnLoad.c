
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * digest; int free; int * mem_usage; int aof_rewrite; int rdb_save; int rdb_load; int version; } ;
typedef TYPE_1__ RedisModuleTypeMethods ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int REDISMODULE_TYPE_METHOD_VERSION ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int ,int ,int ) ;
 int * RedisModule_CreateDataType (int *,char*,int ,TYPE_1__*) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int fsl_aofrw ;
 int fsl_bpop2 ;
 int fsl_bpopgt ;
 int fsl_free ;
 int fsl_push ;
 int fsl_rdb_load ;
 int fsl_rdb_save ;
 int * fsltype ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx, "blockonkeys", 1, REDISMODULE_APIVER_1)== REDISMODULE_ERR)
        return REDISMODULE_ERR;

    RedisModuleTypeMethods tm = {
        .version = REDISMODULE_TYPE_METHOD_VERSION,
        .rdb_load = fsl_rdb_load,
        .rdb_save = fsl_rdb_save,
        .aof_rewrite = fsl_aofrw,
        .mem_usage = ((void*)0),
        .free = fsl_free,
        .digest = ((void*)0)
    };

    fsltype = RedisModule_CreateDataType(ctx, "fsltype_t", 0, &tm);
    if (fsltype == ((void*)0))
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fsl.push",fsl_push,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fsl.bpop2",fsl_bpop2,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fsl.bpopgt",fsl_bpopgt,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}
