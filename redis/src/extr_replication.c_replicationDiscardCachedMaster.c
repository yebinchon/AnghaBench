
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__* cached_master; } ;


 int CLIENT_MASTER ;
 int LL_NOTICE ;
 int freeClient (TYPE_2__*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*) ;

void replicationDiscardCachedMaster(void) {
    if (server.cached_master == ((void*)0)) return;

    serverLog(LL_NOTICE,"Discarding previously cached master state.");
    server.cached_master->flags &= ~CLIENT_MASTER;
    freeClient(server.cached_master);
    server.cached_master = ((void*)0);
}
