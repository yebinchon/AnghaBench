
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {TYPE_4__* module_blocked_handle; } ;
struct TYPE_10__ {int argc; scalar_t__ argv; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {scalar_t__ (* reply_callback ) (TYPE_3__*,void**,int ) ;int client; int module; int privdata; scalar_t__ unblocked; } ;
struct TYPE_11__ {TYPE_4__* blocked_client; int client; int module; int blocked_privdata; int * blocked_ready_key; int flags; } ;
typedef TYPE_3__ RedisModuleCtx ;
typedef TYPE_4__ RedisModuleBlockedClient ;


 int REDISMODULE_CTX_BLOCKED_REPLY ;
 TYPE_3__ REDISMODULE_CTX_INIT ;
 int REDISMODULE_ERR ;
 scalar_t__ REDISMODULE_OK ;
 int moduleFreeContext (TYPE_3__*) ;
 scalar_t__ stub1 (TYPE_3__*,void**,int ) ;

int moduleTryServeClientBlockedOnKey(client *c, robj *key) {
    int served = 0;
    RedisModuleBlockedClient *bc = c->bpop.module_blocked_handle;



    if (bc->unblocked) return REDISMODULE_ERR;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
    ctx.flags |= REDISMODULE_CTX_BLOCKED_REPLY;
    ctx.blocked_ready_key = key;
    ctx.blocked_privdata = bc->privdata;
    ctx.module = bc->module;
    ctx.client = bc->client;
    ctx.blocked_client = bc;
    if (bc->reply_callback(&ctx,(void**)c->argv,c->argc) == REDISMODULE_OK)
        served = 1;
    moduleFreeContext(&ctx);
    return served;
}
