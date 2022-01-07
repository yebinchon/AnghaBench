
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int* sds ;
struct TYPE_4__ {int* proto; int type; int flags; int protolen; int * ctx; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ RedisModuleCallReply ;


 int REDISMODULE_REPLYFLAG_TOPARSE ;
 int REDISMODULE_REPLY_ARRAY ;
 int REDISMODULE_REPLY_ERROR ;
 int REDISMODULE_REPLY_INTEGER ;
 int REDISMODULE_REPLY_NULL ;
 int REDISMODULE_REPLY_STRING ;
 int REDISMODULE_REPLY_UNKNOWN ;
 int sdslen (int*) ;
 TYPE_1__* zmalloc (int) ;

RedisModuleCallReply *moduleCreateCallReplyFromProto(RedisModuleCtx *ctx, sds proto) {
    RedisModuleCallReply *reply = zmalloc(sizeof(*reply));
    reply->ctx = ctx;
    reply->proto = proto;
    reply->protolen = sdslen(proto);
    reply->flags = REDISMODULE_REPLYFLAG_TOPARSE;
    switch(proto[0]) {
    case '$':
    case '+': reply->type = REDISMODULE_REPLY_STRING; break;
    case '-': reply->type = REDISMODULE_REPLY_ERROR; break;
    case ':': reply->type = REDISMODULE_REPLY_INTEGER; break;
    case '*': reply->type = REDISMODULE_REPLY_ARRAY; break;
    default: reply->type = REDISMODULE_REPLY_UNKNOWN; break;
    }
    if ((proto[0] == '*' || proto[0] == '$') && proto[1] == '-')
        reply->type = REDISMODULE_REPLY_NULL;
    return reply;
}
