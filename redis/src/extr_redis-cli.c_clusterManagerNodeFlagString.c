
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
struct TYPE_5__ {int value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_6__ {int flags_str; } ;
typedef TYPE_2__ clusterManagerNode ;


 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int sdscat (int ,char*) ;
 int sdscatfmt (int ,char*,int ) ;
 int sdsempty () ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static sds clusterManagerNodeFlagString(clusterManagerNode *node) {
    sds flags = sdsempty();
    if (!node->flags_str) return flags;
    int empty = 1;
    listIter li;
    listNode *ln;
    listRewind(node->flags_str, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sds flag = ln->value;
        if (strcmp(flag, "myself") == 0) continue;
        if (!empty) flags = sdscat(flags, ",");
        flags = sdscatfmt(flags, "%S", flag);
        empty = 0;
    }
    return flags;
}
