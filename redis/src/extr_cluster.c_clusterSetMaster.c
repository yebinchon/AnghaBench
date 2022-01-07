
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ numslots; int flags; int port; int ip; struct TYPE_9__* slaveof; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_MASTER ;
 int CLUSTER_NODE_MIGRATE_TO ;
 int CLUSTER_NODE_SLAVE ;
 int clusterCloseAllSlots () ;
 int clusterNodeAddSlave (TYPE_1__*,TYPE_1__*) ;
 int clusterNodeRemoveSlave (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* myself ;
 scalar_t__ nodeIsMaster (TYPE_1__*) ;
 int replicationSetMaster (int ,int ) ;
 int resetManualFailover () ;
 int serverAssert (int) ;

void clusterSetMaster(clusterNode *n) {
    serverAssert(n != myself);
    serverAssert(myself->numslots == 0);

    if (nodeIsMaster(myself)) {
        myself->flags &= ~(CLUSTER_NODE_MASTER|CLUSTER_NODE_MIGRATE_TO);
        myself->flags |= CLUSTER_NODE_SLAVE;
        clusterCloseAllSlots();
    } else {
        if (myself->slaveof)
            clusterNodeRemoveSlave(myself->slaveof,myself);
    }
    myself->slaveof = n;
    clusterNodeAddSlave(n,myself);
    replicationSetMaster(n->ip, n->port);
    resetManualFailover();
}
