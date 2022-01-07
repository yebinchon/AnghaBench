
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * module_blocked_pipe; } ;
struct TYPE_5__ {int unblocked; void* privdata; int blocked_on_keys; } ;
typedef TYPE_1__ RedisModuleBlockedClient ;


 int REDISMODULE_OK ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int moduleUnblockedClients ;
 int moduleUnblockedClientsMutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ server ;
 int write (int ,char*,int) ;

int moduleUnblockClientByHandle(RedisModuleBlockedClient *bc, void *privdata) {
    pthread_mutex_lock(&moduleUnblockedClientsMutex);
    if (!bc->blocked_on_keys) bc->privdata = privdata;
    bc->unblocked = 1;
    listAddNodeTail(moduleUnblockedClients,bc);
    if (write(server.module_blocked_pipe[1],"A",1) != 1) {

    }
    pthread_mutex_unlock(&moduleUnblockedClientsMutex);
    return REDISMODULE_OK;
}
