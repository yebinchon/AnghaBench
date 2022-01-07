
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_6__ {scalar_t__* slots; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_7__ {int * nodes; } ;


 int CLUSTER_MANAGER_SLOTS ;
 TYPE_4__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;

__attribute__((used)) static int clusterManagerGetCoveredSlots(char *all_slots) {
    if (cluster_manager.nodes == ((void*)0)) return 0;
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    int totslots = 0, i;
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *node = ln->value;
        for (i = 0; i < CLUSTER_MANAGER_SLOTS; i++) {
            if (node->slots[i] && !all_slots[i]) {
                all_slots[i] = 1;
                totslots++;
            }
        }
    }
    return totslots;
}
