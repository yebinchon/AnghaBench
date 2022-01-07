
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int clusterNode ;
struct TYPE_2__ {int cluster_node_count; int ** cluster_nodes; } ;


 TYPE_1__ config ;
 int ** zrealloc (int **,int) ;

__attribute__((used)) static clusterNode **addClusterNode(clusterNode *node) {
    int count = config.cluster_node_count + 1;
    config.cluster_nodes = zrealloc(config.cluster_nodes,
                                    count * sizeof(*node));
    if (!config.cluster_nodes) return ((void*)0);
    config.cluster_nodes[config.cluster_node_count++] = node;
    return config.cluster_nodes;
}
