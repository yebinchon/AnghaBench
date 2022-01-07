
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* master; TYPE_1__* cached_master; int replid; int master_repl_offset; int master_initial_offset; } ;
struct TYPE_3__ {int replid; } ;


 int LL_NOTICE ;
 int memcpy (int ,int ,int) ;
 int replicationCreateMasterClient (int *,int) ;
 TYPE_2__ server ;
 int serverLog (int ,char*) ;
 int unlinkClient (TYPE_1__*) ;

void replicationCacheMasterUsingMyself(void) {


    server.master_initial_offset = server.master_repl_offset;
    replicationCreateMasterClient(((void*)0),-1);


    memcpy(server.master->replid, server.replid, sizeof(server.replid));


    unlinkClient(server.master);
    server.cached_master = server.master;
    server.master = ((void*)0);
    serverLog(LL_NOTICE,"Before turning into a replica, using my master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer.");
}
