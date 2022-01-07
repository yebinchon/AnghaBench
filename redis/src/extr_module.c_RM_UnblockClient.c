
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ client; scalar_t__ unblocked; int * timeout_callback; scalar_t__ blocked_on_keys; } ;
typedef TYPE_1__ RedisModuleBlockedClient ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int moduleBlockedClientTimedOut (scalar_t__) ;
 int moduleUnblockClientByHandle (TYPE_1__*,void*) ;

int RM_UnblockClient(RedisModuleBlockedClient *bc, void *privdata) {
    if (bc->blocked_on_keys) {


        if (bc->timeout_callback == ((void*)0)) return REDISMODULE_ERR;
        if (bc->unblocked) return REDISMODULE_OK;
        if (bc->client) moduleBlockedClientTimedOut(bc->client);
    }
    moduleUnblockClientByHandle(bc,privdata);
    return REDISMODULE_OK;
}
