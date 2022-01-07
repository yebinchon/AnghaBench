
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
typedef int clusterManagerReshardTableItem ;


 TYPE_1__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int zfree (int *) ;

__attribute__((used)) static void clusterManagerReleaseReshardTable(list *table) {
    if (table != ((void*)0)) {
        listIter li;
        listNode *ln;
        listRewind(table, &li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerReshardTableItem *item = ln->value;
            zfree(item);
        }
        listRelease(table);
    }
}
