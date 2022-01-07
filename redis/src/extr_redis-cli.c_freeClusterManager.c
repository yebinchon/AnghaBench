
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_4__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int clusterManagerNode ;
struct TYPE_5__ {int * errors; int * nodes; } ;


 int * clusterManagerUncoveredSlots ;
 TYPE_3__ cluster_manager ;
 int dictRelease (int *) ;
 int freeClusterManagerNode (int *) ;
 TYPE_1__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int sdsfree (int *) ;

__attribute__((used)) static void freeClusterManager(void) {
    listIter li;
    listNode *ln;
    if (cluster_manager.nodes != ((void*)0)) {
        listRewind(cluster_manager.nodes,&li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerNode *n = ln->value;
            freeClusterManagerNode(n);
        }
        listRelease(cluster_manager.nodes);
        cluster_manager.nodes = ((void*)0);
    }
    if (cluster_manager.errors != ((void*)0)) {
        listRewind(cluster_manager.errors,&li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            sds err = ln->value;
            sdsfree(err);
        }
        listRelease(cluster_manager.errors);
        cluster_manager.errors = ((void*)0);
    }
    if (clusterManagerUncoveredSlots != ((void*)0))
        dictRelease(clusterManagerUncoveredSlots);
}
