
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int Keyspace ;
 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int,int,int ) ;
 int RedisModule_CreateDict (int *) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int cmd_GET ;
 int cmd_KEYRANGE ;
 int cmd_SET ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx,"hellodict",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellodict.set",
        cmd_SET,"write deny-oom",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellodict.get",
        cmd_GET,"readonly",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellodict.keyrange",
        cmd_KEYRANGE,"readonly",1,1,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;


    Keyspace = RedisModule_CreateDict(((void*)0));

    return REDISMODULE_OK;
}
