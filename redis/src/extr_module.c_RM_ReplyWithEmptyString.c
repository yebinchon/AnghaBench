
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyBulkCBuffer (int *,char*,int ) ;
 int * moduleGetReplyClient (int *) ;

int RM_ReplyWithEmptyString(RedisModuleCtx *ctx) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReplyBulkCBuffer(c, "", 0);
    return REDISMODULE_OK;
}
