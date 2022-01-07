
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int replid; scalar_t__ second_replid_offset; int replid2; scalar_t__ master_repl_offset; } ;


 int LL_WARNING ;
 int changeReplicationId () ;
 int memcpy (int ,int ,int) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ,scalar_t__,int ) ;

void shiftReplicationId(void) {
    memcpy(server.replid2,server.replid,sizeof(server.replid));







    server.second_replid_offset = server.master_repl_offset+1;
    changeReplicationId();
    serverLog(LL_WARNING,"Setting secondary replication ID to %s, valid up to offset: %lld. New replication ID is %s", server.replid2, server.second_replid_offset, server.replid);
}
