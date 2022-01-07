
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int clusterNode ;
struct TYPE_2__ {int cluster_node_count; int ** cluster_nodes; } ;


 TYPE_1__ config ;
 int freeClusterNode (int *) ;
 int zfree (int **) ;

__attribute__((used)) static void freeClusterNodes() {
    int i = 0;
    for (; i < config.cluster_node_count; i++) {
        clusterNode *n = config.cluster_nodes[i];
        if (n) freeClusterNode(n);
    }
    zfree(config.cluster_nodes);
    config.cluster_nodes = ((void*)0);
}
