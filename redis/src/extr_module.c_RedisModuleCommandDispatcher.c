
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int argc; TYPE_5__** argv; TYPE_1__* cmd; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int refcount; } ;
struct TYPE_13__ {int (* func ) (TYPE_3__*,void**,int) ;int module; } ;
struct TYPE_12__ {TYPE_2__* client; int module; int flags; } ;
struct TYPE_10__ {scalar_t__ getkeys_proc; } ;
typedef TYPE_3__ RedisModuleCtx ;
typedef TYPE_4__ RedisModuleCommandProxy ;


 TYPE_3__ REDISMODULE_CTX_INIT ;
 int REDISMODULE_CTX_MODULE_COMMAND_CALL ;
 int moduleFreeContext (TYPE_3__*) ;
 int stub1 (TYPE_3__*,void**,int) ;
 int trimStringObjectIfNeeded (TYPE_5__*) ;

void RedisModuleCommandDispatcher(client *c) {
    RedisModuleCommandProxy *cp = (void*)(unsigned long)c->cmd->getkeys_proc;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

    ctx.flags |= REDISMODULE_CTX_MODULE_COMMAND_CALL;
    ctx.module = cp->module;
    ctx.client = c;
    cp->func(&ctx,(void**)c->argv,c->argc);
    moduleFreeContext(&ctx);
    for (int i = 0; i < c->argc; i++) {


        if (c->argv[i]->refcount > 1)
            trimStringObjectIfNeeded(c->argv[i]);
    }
}
