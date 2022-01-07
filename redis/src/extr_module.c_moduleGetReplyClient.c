
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int client ;
struct TYPE_5__ {int flags; int * client; TYPE_1__* blocked_client; } ;
struct TYPE_4__ {int * reply_client; } ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_CTX_THREAD_SAFE ;

client *moduleGetReplyClient(RedisModuleCtx *ctx) {
    if (ctx->flags & REDISMODULE_CTX_THREAD_SAFE) {
        if (ctx->blocked_client)
            return ctx->blocked_client->reply_client;
        else
            return ((void*)0);
    } else {




        return ctx->client;
    }
}
