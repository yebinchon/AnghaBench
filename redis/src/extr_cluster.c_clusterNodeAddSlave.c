
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numslaves; int flags; struct TYPE_6__** slaves; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_MIGRATE_TO ;
 int C_ERR ;
 int C_OK ;
 TYPE_1__** zrealloc (TYPE_1__**,int) ;

int clusterNodeAddSlave(clusterNode *master, clusterNode *slave) {
    int j;


    for (j = 0; j < master->numslaves; j++)
        if (master->slaves[j] == slave) return C_ERR;
    master->slaves = zrealloc(master->slaves,
        sizeof(clusterNode*)*(master->numslaves+1));
    master->slaves[master->numslaves] = slave;
    master->numslaves++;
    master->flags |= CLUSTER_NODE_MIGRATE_TO;
    return C_OK;
}
