
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct redisCommand {scalar_t__ getkeys_proc; } ;
typedef int robj ;
struct TYPE_7__ {int (* func ) (TYPE_1__*,void**,int) ;int module; } ;
struct TYPE_6__ {int* keys_pos; int keys_count; int flags; int * client; int module; } ;
typedef TYPE_1__ RedisModuleCtx ;
typedef TYPE_2__ RedisModuleCommandProxy ;


 TYPE_1__ REDISMODULE_CTX_INIT ;
 int REDISMODULE_CTX_KEYS_POS_REQUEST ;
 int moduleFreeContext (TYPE_1__*) ;
 int stub1 (TYPE_1__*,void**,int) ;

int *moduleGetCommandKeysViaAPI(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    RedisModuleCommandProxy *cp = (void*)(unsigned long)cmd->getkeys_proc;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

    ctx.module = cp->module;
    ctx.client = ((void*)0);
    ctx.flags |= REDISMODULE_CTX_KEYS_POS_REQUEST;
    cp->func(&ctx,(void**)argv,argc);
    int *res = ctx.keys_pos;
    if (numkeys) *numkeys = ctx.keys_count;
    moduleFreeContext(&ctx);
    return res;
}
