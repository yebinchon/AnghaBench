
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* module_blocked_handle; } ;
struct TYPE_12__ {TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int * client; int (* disconnect_callback ) (TYPE_3__*,TYPE_4__*) ;int module; int privdata; } ;
struct TYPE_13__ {int * client; int module; int blocked_privdata; } ;
typedef TYPE_3__ RedisModuleCtx ;
typedef TYPE_4__ RedisModuleBlockedClient ;


 TYPE_3__ REDISMODULE_CTX_INIT ;
 int moduleFreeContext (TYPE_3__*) ;
 int resetClient (TYPE_2__*) ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;

void unblockClientFromModule(client *c) {
    RedisModuleBlockedClient *bc = c->bpop.module_blocked_handle;


    if (bc->disconnect_callback) {
        RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
        ctx.blocked_privdata = bc->privdata;
        ctx.module = bc->module;
        ctx.client = bc->client;
        bc->disconnect_callback(&ctx,bc);
        moduleFreeContext(&ctx);
    }

    bc->client = ((void*)0);




    resetClient(c);
}
