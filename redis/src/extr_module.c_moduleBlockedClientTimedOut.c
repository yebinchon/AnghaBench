
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* module_blocked_handle; } ;
struct TYPE_10__ {int argc; scalar_t__ argv; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {int * disconnect_callback; int (* timeout_callback ) (TYPE_3__*,void**,int ) ;int client; int module; } ;
struct TYPE_11__ {TYPE_4__* blocked_client; int client; int module; int flags; } ;
typedef TYPE_3__ RedisModuleCtx ;
typedef TYPE_4__ RedisModuleBlockedClient ;


 int REDISMODULE_CTX_BLOCKED_TIMEOUT ;
 TYPE_3__ REDISMODULE_CTX_INIT ;
 int moduleFreeContext (TYPE_3__*) ;
 int stub1 (TYPE_3__*,void**,int ) ;

void moduleBlockedClientTimedOut(client *c) {
    RedisModuleBlockedClient *bc = c->bpop.module_blocked_handle;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
    ctx.flags |= REDISMODULE_CTX_BLOCKED_TIMEOUT;
    ctx.module = bc->module;
    ctx.client = bc->client;
    ctx.blocked_client = bc;
    bc->timeout_callback(&ctx,(void**)c->argv,c->argc);
    moduleFreeContext(&ctx);



    bc->disconnect_callback = ((void*)0);
}
