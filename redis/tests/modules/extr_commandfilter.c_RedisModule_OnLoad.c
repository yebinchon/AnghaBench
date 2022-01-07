
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int CommandFilter_CommandFilter ;
 int CommandFilter_LogCommand ;
 int CommandFilter_PingCommand ;
 int CommandFilter_UnregisterCommand ;
 int REDISMODULE_APIVER_1 ;
 int REDISMODULE_CMDFILTER_NOSELF ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ RedisModule_CreateCommand (int *,int ,int ,char*,int,int,int) ;
 int RedisModule_CreateStringFromString (int *,int *) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int RedisModule_Log (int *,char*,char*) ;
 int * RedisModule_RegisterCommandFilter (int *,int ,int ) ;
 int RedisModule_StringToLongLong (int *,long long*) ;
 int * filter ;
 int log_command_name ;
 int log_key_name ;
 int ping_command_name ;
 int unregister_command_name ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (RedisModule_Init(ctx,"commandfilter",1,REDISMODULE_APIVER_1)
            == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (argc != 2) {
        RedisModule_Log(ctx, "warning", "Log key name not specified");
        return REDISMODULE_ERR;
    }

    long long noself = 0;
    log_key_name = RedisModule_CreateStringFromString(ctx, argv[0]);
    RedisModule_StringToLongLong(argv[1], &noself);

    if (RedisModule_CreateCommand(ctx,log_command_name,
                CommandFilter_LogCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,ping_command_name,
                CommandFilter_PingCommand,"deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,unregister_command_name,
                CommandFilter_UnregisterCommand,"write deny-oom",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;

    if ((filter = RedisModule_RegisterCommandFilter(ctx, CommandFilter_CommandFilter,
                    noself ? REDISMODULE_CMDFILTER_NOSELF : 0))
            == ((void*)0)) return REDISMODULE_ERR;

    return REDISMODULE_OK;
}
