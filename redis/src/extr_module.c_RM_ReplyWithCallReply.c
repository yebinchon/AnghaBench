
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
typedef int client ;
struct TYPE_3__ {int protolen; int proto; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ RedisModuleCallReply ;


 int REDISMODULE_OK ;
 int addReplySds (int *,int ) ;
 int * moduleGetReplyClient (int *) ;
 int sdsnewlen (int ,int ) ;

int RM_ReplyWithCallReply(RedisModuleCtx *ctx, RedisModuleCallReply *reply) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    sds proto = sdsnewlen(reply->proto, reply->protolen);
    addReplySds(c,proto);
    return REDISMODULE_OK;
}
