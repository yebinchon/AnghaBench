
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * client; int module; } ;
struct TYPE_9__ {TYPE_3__* ctx; TYPE_1__* type; } ;
struct TYPE_8__ {int module; } ;
typedef TYPE_2__ RedisModuleIO ;
typedef TYPE_3__ RedisModuleCtx ;


 TYPE_3__ REDISMODULE_CTX_INIT ;
 TYPE_3__* zmalloc (int) ;

RedisModuleCtx *RM_GetContextFromIO(RedisModuleIO *io) {
    if (io->ctx) return io->ctx;
    RedisModuleCtx ctxtemplate = REDISMODULE_CTX_INIT;
    io->ctx = zmalloc(sizeof(RedisModuleCtx));
    *(io->ctx) = ctxtemplate;
    io->ctx->module = io->type->module;
    io->ctx->client = ((void*)0);
    return io->ctx;
}
