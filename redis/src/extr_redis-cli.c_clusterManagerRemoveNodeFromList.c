
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
typedef int clusterManagerNode ;


 int listDelNode (int *,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;

__attribute__((used)) static void clusterManagerRemoveNodeFromList(list *nodelist,
                                             clusterManagerNode *node) {
    listIter li;
    listNode *ln;
    listRewind(nodelist, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        if (node == ln->value) {
            listDelNode(nodelist, ln);
            break;
        }
    }
}
