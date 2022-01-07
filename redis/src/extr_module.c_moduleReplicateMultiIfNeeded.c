
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int also_propagate; } ;
struct TYPE_5__ {int flags; TYPE_4__* client; int saved_oparray; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int CLIENT_LUA ;
 int CLIENT_MULTI ;
 int REDISMODULE_CTX_MODULE_COMMAND_CALL ;
 int REDISMODULE_CTX_MULTI_EMITTED ;
 int REDISMODULE_CTX_THREAD_SAFE ;
 int execCommandPropagateMulti (TYPE_4__*) ;
 int redisOpArrayInit (int *) ;
 TYPE_2__ server ;

void moduleReplicateMultiIfNeeded(RedisModuleCtx *ctx) {


    if (ctx->client->flags & (CLIENT_MULTI|CLIENT_LUA)) return;

    if (ctx->flags & REDISMODULE_CTX_MULTI_EMITTED) return;



    if (ctx->flags & REDISMODULE_CTX_THREAD_SAFE) return;



    if (!(ctx->flags & REDISMODULE_CTX_MODULE_COMMAND_CALL)) {
        ctx->saved_oparray = server.also_propagate;
        redisOpArrayInit(&server.also_propagate);
    }
    execCommandPropagateMulti(ctx->client);
    ctx->flags |= REDISMODULE_CTX_MULTI_EMITTED;
}
