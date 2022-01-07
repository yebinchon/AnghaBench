
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_6__ {int slot; TYPE_3__* source; } ;
typedef TYPE_2__ clusterManagerReshardTableItem ;
struct TYPE_7__ {scalar_t__ name; } ;
typedef TYPE_3__ clusterManagerNode ;


 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static void clusterManagerShowReshardTable(list *table) {
    listIter li;
    listNode *ln;
    listRewind(table, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerReshardTableItem *item = ln->value;
        clusterManagerNode *n = item->source;
        printf("    Moving slot %d from %s\n", item->slot, (char *) n->name);
    }
}
