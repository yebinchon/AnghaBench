
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;


 TYPE_1__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int sdsfree (int ) ;

__attribute__((used)) static void freeClusterManagerNodeFlags(list *flags) {
    listIter li;
    listNode *ln;
    listRewind(flags, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sds flag = ln->value;
        sdsfree(flag);
    }
    listRelease(flags);
}
