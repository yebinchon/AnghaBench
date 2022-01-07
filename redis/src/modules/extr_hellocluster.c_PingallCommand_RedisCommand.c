
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int MSGTYPE_PING ;
 int REDISMODULE_NOT_USED (int) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 int RedisModule_SendClusterMessage (int *,int *,int ,unsigned char*,int) ;

int PingallCommand_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    RedisModule_SendClusterMessage(ctx,((void*)0),MSGTYPE_PING,(unsigned char*)"Hey",3);
    return RedisModule_ReplyWithSimpleString(ctx, "OK");
}
