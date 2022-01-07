
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_7__ {int flags; int replicas_count; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_8__ {int nodes; } ;


 int CLUSTER_MANAGER_FLAG_SLAVE ;
 TYPE_4__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;

__attribute__((used)) static clusterManagerNode *clusterManagerNodeWithLeastReplicas() {
    clusterManagerNode *node = ((void*)0);
    int lowest_count = 0;
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE) continue;
        if (node == ((void*)0) || n->replicas_count < lowest_count) {
            node = n;
            lowest_count = n->replicas_count;
        }
    }
    return node;
}
