
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_15__ {int flags; int replicas_count; int * replicate; int port; int ip; int * friends; int * context; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_16__ {int * nodes; } ;


 int CLUSTER_MANAGER_FLAG_DISCONNECT ;
 int CLUSTER_MANAGER_FLAG_FAIL ;
 int CLUSTER_MANAGER_FLAG_NOADDR ;
 int CLUSTER_MANAGER_OPT_GETFRIENDS ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_2__*,char*) ;
 int clusterManagerLogErr (char*,int ,int ) ;
 int clusterManagerLogWarn (char*,int ,int ,int *) ;
 TYPE_2__* clusterManagerNodeByName (int *) ;
 int clusterManagerNodeConnect (TYPE_2__*) ;
 int clusterManagerNodeIsCluster (TYPE_2__*,char**) ;
 scalar_t__ clusterManagerNodeLoadInfo (TYPE_2__*,int,char**) ;
 int clusterManagerPrintNotClusterNodeError (TYPE_2__*,char*) ;
 TYPE_6__ cluster_manager ;
 int freeClusterManagerNode (TYPE_2__*) ;
 int listAddNodeTail (int *,TYPE_2__*) ;
 int * listCreate () ;
 TYPE_1__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int zfree (char*) ;

__attribute__((used)) static int clusterManagerLoadInfoFromNode(clusterManagerNode *node, int opts) {
    if (node->context == ((void*)0) && !clusterManagerNodeConnect(node)) {
        freeClusterManagerNode(node);
        return 0;
    }
    opts |= CLUSTER_MANAGER_OPT_GETFRIENDS;
    char *e = ((void*)0);
    if (!clusterManagerNodeIsCluster(node, &e)) {
        clusterManagerPrintNotClusterNodeError(node, e);
        if (e) zfree(e);
        freeClusterManagerNode(node);
        return 0;
    }
    e = ((void*)0);
    if (!clusterManagerNodeLoadInfo(node, opts, &e)) {
        if (e) {
            CLUSTER_MANAGER_PRINT_REPLY_ERROR(node, e);
            zfree(e);
        }
        freeClusterManagerNode(node);
        return 0;
    }
    listIter li;
    listNode *ln;
    if (cluster_manager.nodes != ((void*)0)) {
        listRewind(cluster_manager.nodes, &li);
        while ((ln = listNext(&li)) != ((void*)0))
            freeClusterManagerNode((clusterManagerNode *) ln->value);
        listRelease(cluster_manager.nodes);
    }
    cluster_manager.nodes = listCreate();
    listAddNodeTail(cluster_manager.nodes, node);
    if (node->friends != ((void*)0)) {
        listRewind(node->friends, &li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerNode *friend = ln->value;
            if (!friend->ip || !friend->port) goto invalid_friend;
            if (!friend->context && !clusterManagerNodeConnect(friend))
                goto invalid_friend;
            e = ((void*)0);
            if (clusterManagerNodeLoadInfo(friend, 0, &e)) {
                if (friend->flags & (CLUSTER_MANAGER_FLAG_NOADDR |
                                     CLUSTER_MANAGER_FLAG_DISCONNECT |
                                     CLUSTER_MANAGER_FLAG_FAIL))
                    goto invalid_friend;
                listAddNodeTail(cluster_manager.nodes, friend);
            } else {
                clusterManagerLogErr("[ERR] Unable to load info for "
                                     "node %s:%d\n",
                                     friend->ip, friend->port);
                goto invalid_friend;
            }
            continue;
invalid_friend:
            freeClusterManagerNode(friend);
        }
        listRelease(node->friends);
        node->friends = ((void*)0);
    }

    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->replicate != ((void*)0)) {
            clusterManagerNode *master = clusterManagerNodeByName(n->replicate);
            if (master == ((void*)0)) {
                clusterManagerLogWarn("*** WARNING: %s:%d claims to be "
                                      "slave of unknown node ID %s.\n",
                                      n->ip, n->port, n->replicate);
            } else master->replicas_count++;
        }
    }
    return 1;
}
