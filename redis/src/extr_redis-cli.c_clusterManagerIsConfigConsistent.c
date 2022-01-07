
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
struct TYPE_5__ {int * nodes; } ;


 int * clusterManagerGetConfigSignature (int *) ;
 TYPE_3__ cluster_manager ;
 int listLength (int *) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int sdscmp (int *,int *) ;
 int sdsfree (int *) ;

__attribute__((used)) static int clusterManagerIsConfigConsistent(void) {
    if (cluster_manager.nodes == ((void*)0)) return 0;
    int consistent = (listLength(cluster_manager.nodes) <= 1);

    if (consistent) return 1;
    sds first_cfg = ((void*)0);
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *node = ln->value;
        sds cfg = clusterManagerGetConfigSignature(node);
        if (cfg == ((void*)0)) {
            consistent = 0;
            break;
        }
        if (first_cfg == ((void*)0)) first_cfg = cfg;
        else {
            consistent = !sdscmp(first_cfg, cfg);
            sdsfree(cfg);
            if (!consistent) break;
        }
    }
    if (first_cfg != ((void*)0)) sdsfree(first_cfg);
    return consistent;
}
