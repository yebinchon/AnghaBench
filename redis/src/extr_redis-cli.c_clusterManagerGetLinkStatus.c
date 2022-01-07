
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sds ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_9__ {int node_addr; int node_name; int port; int ip; } ;
typedef TYPE_2__ clusterManagerNode ;
typedef TYPE_2__ clusterManagerLink ;
struct TYPE_10__ {int * nodes; } ;


 int * clusterManagerGetDisconnectedLinks (TYPE_2__*) ;
 int clusterManagerLinkDictType ;
 TYPE_6__ cluster_manager ;
 int dictAdd (int *,int ,int *) ;
 int * dictCreate (int *,int *) ;
 int * dictFind (int *,int ) ;
 int * dictGetVal (int *) ;
 int listAddNodeTail (int *,int ) ;
 int * listCreate () ;
 TYPE_1__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int sdscatfmt (int ,char*,int ,int ) ;
 int sdsdup (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int zfree (TYPE_2__*) ;

__attribute__((used)) static dict *clusterManagerGetLinkStatus(void) {
    if (cluster_manager.nodes == ((void*)0)) return ((void*)0);
    dict *status = dictCreate(&clusterManagerLinkDictType, ((void*)0));
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *node = ln->value;
        list *links = clusterManagerGetDisconnectedLinks(node);
        if (links) {
            listIter lli;
            listNode *lln;
            listRewind(links, &lli);
            while ((lln = listNext(&lli)) != ((void*)0)) {
                clusterManagerLink *link = lln->value;
                list *from = ((void*)0);
                dictEntry *entry = dictFind(status, link->node_addr);
                if (entry) from = dictGetVal(entry);
                else {
                    from = listCreate();
                    dictAdd(status, sdsdup(link->node_addr), from);
                }
                sds myaddr = sdsempty();
                myaddr = sdscatfmt(myaddr, "%s:%u", node->ip, node->port);
                listAddNodeTail(from, myaddr);
                sdsfree(link->node_name);
                sdsfree(link->node_addr);
                zfree(link);
            }
            listRelease(links);
        }
    }
    return status;
}
