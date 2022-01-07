
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;


 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void clusterManagerPrintSlotsList(list *slots) {
    listIter li;
    listNode *ln;
    listRewind(slots, &li);
    sds first = ((void*)0);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sds slot = ln->value;
        if (!first) first = slot;
        else printf(", ");
        printf("%s", slot);
    }
    printf("\n");
}
