
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** argv; } ;
struct TYPE_6__ {TYPE_3__* client; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReplyErrorFormat (TYPE_3__*,char*,char*) ;

int RM_WrongArity(RedisModuleCtx *ctx) {
    addReplyErrorFormat(ctx->client,
        "wrong number of arguments for '%s' command",
        (char*)ctx->client->argv[0]->ptr);
    return REDISMODULE_OK;
}
