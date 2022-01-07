
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numslots; int flags; int slots; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_MIGRATE_TO ;
 int bitmapSetBit (int ,int) ;
 int bitmapTestBit (int ,int) ;
 scalar_t__ clusterMastersHaveSlaves () ;

int clusterNodeSetSlotBit(clusterNode *n, int slot) {
    int old = bitmapTestBit(n->slots,slot);
    bitmapSetBit(n->slots,slot);
    if (!old) {
        n->numslots++;
        if (n->numslots == 1 && clusterMastersHaveSlaves())
            n->flags |= CLUSTER_NODE_MIGRATE_TO;
    }
    return old;
}
