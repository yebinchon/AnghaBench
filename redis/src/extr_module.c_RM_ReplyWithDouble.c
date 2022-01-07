
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyDouble (int *,double) ;
 int * moduleGetReplyClient (int *) ;

int RM_ReplyWithDouble(RedisModuleCtx *ctx, double d) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReplyDouble(c,d);
    return REDISMODULE_OK;
}
