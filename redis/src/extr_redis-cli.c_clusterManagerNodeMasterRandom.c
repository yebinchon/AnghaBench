
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
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_8__ {int nodes; } ;


 int CLUSTER_MANAGER_FLAG_SLAVE ;
 TYPE_4__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;

__attribute__((used)) static clusterManagerNode *clusterManagerNodeMasterRandom() {
    int master_count = 0;
    int idx;
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE) continue;
        master_count++;
    }

    srand(time(((void*)0)));
    idx = rand() % master_count;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE) continue;
        if (!idx--) {
            return n;
        }
    }

    return ((void*)0);
}
