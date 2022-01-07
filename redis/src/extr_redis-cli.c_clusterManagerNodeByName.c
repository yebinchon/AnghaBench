
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sds ;
struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_7__ {scalar_t__ name; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_8__ {int * nodes; } ;


 TYPE_4__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int sdscmp (scalar_t__,int ) ;
 int sdscpy (int ,char const*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdstolower (int ) ;

__attribute__((used)) static clusterManagerNode *clusterManagerNodeByName(const char *name) {
    if (cluster_manager.nodes == ((void*)0)) return ((void*)0);
    clusterManagerNode *found = ((void*)0);
    sds lcname = sdsempty();
    lcname = sdscpy(lcname, name);
    sdstolower(lcname);
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->name && !sdscmp(n->name, lcname)) {
            found = n;
            break;
        }
    }
    sdsfree(lcname);
    return found;
}
