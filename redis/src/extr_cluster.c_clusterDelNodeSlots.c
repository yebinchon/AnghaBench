
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clusterNode ;


 int CLUSTER_SLOTS ;
 int clusterDelSlot (int) ;
 scalar_t__ clusterNodeGetSlotBit (int *,int) ;

int clusterDelNodeSlots(clusterNode *node) {
    int deleted = 0, j;

    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (clusterNodeGetSlotBit(node,j)) {
            clusterDelSlot(j);
            deleted++;
        }
    }
    return deleted;
}
