
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int ListCommand_RedisCommand ;
 int MSGTYPE_PING ;
 int MSGTYPE_PONG ;
 int PingReceiver ;
 int PingallCommand_RedisCommand ;
 int PongReceiver ;
 int REDISMODULE_APIVER_1 ;
 int REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int ,int ,int ) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int RedisModule_RegisterClusterMessageReceiver (int *,int ,int ) ;
 int RedisModule_SetClusterFlags (int *,int ) ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx,"hellocluster",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellocluster.pingall",
        PingallCommand_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"hellocluster.list",
        ListCommand_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;







    RedisModule_SetClusterFlags(ctx,REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION);


    RedisModule_RegisterClusterMessageReceiver(ctx,MSGTYPE_PING,PingReceiver);
    RedisModule_RegisterClusterMessageReceiver(ctx,MSGTYPE_PONG,PongReceiver);
    return REDISMODULE_OK;
}
