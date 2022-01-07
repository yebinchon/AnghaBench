
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyProto (int *,char const*,int) ;
 int * moduleGetReplyClient (int *) ;
 int strlen (char const*) ;

int replyWithStatus(RedisModuleCtx *ctx, const char *msg, char *prefix) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReplyProto(c,prefix,strlen(prefix));
    addReplyProto(c,msg,strlen(msg));
    addReplyProto(c,"\r\n",2);
    return REDISMODULE_OK;
}
