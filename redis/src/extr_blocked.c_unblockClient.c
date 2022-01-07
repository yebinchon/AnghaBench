
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t btype; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int * blocked_clients_by_type; int blocked_clients; } ;


 size_t BLOCKED_LIST ;
 size_t BLOCKED_MODULE ;
 size_t BLOCKED_NONE ;
 size_t BLOCKED_STREAM ;
 size_t BLOCKED_WAIT ;
 size_t BLOCKED_ZSET ;
 int CLIENT_BLOCKED ;
 scalar_t__ moduleClientIsBlockedOnKeys (TYPE_1__*) ;
 int queueClientForReprocessing (TYPE_1__*) ;
 TYPE_6__ server ;
 int serverPanic (char*) ;
 int unblockClientFromModule (TYPE_1__*) ;
 int unblockClientWaitingData (TYPE_1__*) ;
 int unblockClientWaitingReplicas (TYPE_1__*) ;

void unblockClient(client *c) {
    if (c->btype == BLOCKED_LIST ||
        c->btype == BLOCKED_ZSET ||
        c->btype == BLOCKED_STREAM) {
        unblockClientWaitingData(c);
    } else if (c->btype == BLOCKED_WAIT) {
        unblockClientWaitingReplicas(c);
    } else if (c->btype == BLOCKED_MODULE) {
        if (moduleClientIsBlockedOnKeys(c)) unblockClientWaitingData(c);
        unblockClientFromModule(c);
    } else {
        serverPanic("Unknown btype in unblockClient().");
    }


    server.blocked_clients--;
    server.blocked_clients_by_type[c->btype]--;
    c->flags &= ~CLIENT_BLOCKED;
    c->btype = BLOCKED_NONE;
    queueClientForReprocessing(c);
}
