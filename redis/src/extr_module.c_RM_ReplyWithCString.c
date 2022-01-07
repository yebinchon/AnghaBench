
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyBulkCString (int *,char*) ;
 int * moduleGetReplyClient (int *) ;

int RM_ReplyWithCString(RedisModuleCtx *ctx, const char *buf) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReplyBulkCString(c,(char*)buf);
    return REDISMODULE_OK;
}
