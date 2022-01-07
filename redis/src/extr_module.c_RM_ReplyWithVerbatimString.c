
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyVerbatim (int *,char const*,size_t,char*) ;
 int * moduleGetReplyClient (int *) ;

int RM_ReplyWithVerbatimString(RedisModuleCtx *ctx, const char *buf, size_t len) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReplyVerbatim(c, buf, len, "txt");
    return REDISMODULE_OK;
}
