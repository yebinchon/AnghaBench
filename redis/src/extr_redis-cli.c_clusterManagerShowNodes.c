
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_4__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int clusterManagerNode ;
struct TYPE_5__ {int nodes; } ;


 scalar_t__ clusterManagerNodeInfo (int *,int ) ;
 TYPE_3__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int printf (char*,char*) ;
 int sdsfree (scalar_t__) ;

__attribute__((used)) static void clusterManagerShowNodes(void) {
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *node = ln->value;
        sds info = clusterManagerNodeInfo(node, 0);
        printf("%s\n", (char *) info);
        sdsfree(info);
    }
}
