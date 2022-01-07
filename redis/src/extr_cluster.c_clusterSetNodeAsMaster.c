
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * slaveof; int flags; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_MASTER ;
 int CLUSTER_NODE_MIGRATE_TO ;
 int CLUSTER_NODE_SLAVE ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int clusterDoBeforeSleep (int) ;
 int clusterNodeRemoveSlave (int *,TYPE_1__*) ;
 TYPE_1__* myself ;
 scalar_t__ nodeIsMaster (TYPE_1__*) ;

void clusterSetNodeAsMaster(clusterNode *n) {
    if (nodeIsMaster(n)) return;

    if (n->slaveof) {
        clusterNodeRemoveSlave(n->slaveof,n);
        if (n != myself) n->flags |= CLUSTER_NODE_MIGRATE_TO;
    }
    n->flags &= ~CLUSTER_NODE_SLAVE;
    n->flags |= CLUSTER_NODE_MASTER;
    n->slaveof = ((void*)0);


    clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|
                         CLUSTER_TODO_UPDATE_STATE);
}
