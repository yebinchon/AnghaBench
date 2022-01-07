
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_11__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_12__ {scalar_t__ slots_count; char* name; int context; int port; int ip; scalar_t__ replicate; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_13__ {int nodes; } ;


 int * CLUSTER_MANAGER_COMMAND (TYPE_2__*,char*,char*) ;
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int UNUSED (int) ;
 int assert (int ) ;
 int clusterManagerCheckRedisReply (TYPE_2__*,int *,int *) ;
 int clusterManagerLoadInfoFromNode (TYPE_2__*,int ) ;
 int clusterManagerLogErr (char*,char*,...) ;
 int clusterManagerLogInfo (char*,...) ;
 TYPE_2__* clusterManagerNewNode (char*,int) ;
 TYPE_2__* clusterManagerNodeByName (char*) ;
 TYPE_2__* clusterManagerNodeWithLeastReplicas () ;
 TYPE_4__ cluster_manager ;
 int fprintf (int ,char*) ;
 int freeReplyObject (int *) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int * redisCommand (int ,char*,char*) ;
 int stderr ;
 int strcasecmp (scalar_t__,char*) ;

__attribute__((used)) static int clusterManagerCommandDeleteNode(int argc, char **argv) {
    UNUSED(argc);
    int success = 1;
    int port = 0;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(1, argv, &ip, &port)) goto invalid_args;
    char *node_id = argv[1];
    clusterManagerLogInfo(">>> Removing node %s from cluster %s:%d\n",
                          node_id, ip, port);
    clusterManagerNode *ref_node = clusterManagerNewNode(ip, port);
    clusterManagerNode *node = ((void*)0);


    if (!clusterManagerLoadInfoFromNode(ref_node, 0)) return 0;


    node = clusterManagerNodeByName(node_id);
    if (node == ((void*)0)) {
        clusterManagerLogErr("[ERR] No such node ID %s\n", node_id);
        return 0;
    }
    if (node->slots_count != 0) {
        clusterManagerLogErr("[ERR] Node %s:%d is not empty! Reshard data "
                             "away and try again.\n", node->ip, node->port);
        return 0;
    }


    clusterManagerLogInfo(">>> Sending CLUSTER FORGET messages to the "
                          "cluster...\n");
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n == node) continue;
        if (n->replicate && !strcasecmp(n->replicate, node_id)) {

            clusterManagerNode *master = clusterManagerNodeWithLeastReplicas();
            assert(master != ((void*)0));
            clusterManagerLogInfo(">>> %s:%d as replica of %s:%d\n",
                                  n->ip, n->port, master->ip, master->port);
            redisReply *r = CLUSTER_MANAGER_COMMAND(n, "CLUSTER REPLICATE %s",
                                                    master->name);
            success = clusterManagerCheckRedisReply(n, r, ((void*)0));
            if (r) freeReplyObject(r);
            if (!success) return 0;
        }
        redisReply *r = CLUSTER_MANAGER_COMMAND(n, "CLUSTER FORGET %s",
                                                node_id);
        success = clusterManagerCheckRedisReply(n, r, ((void*)0));
        if (r) freeReplyObject(r);
        if (!success) return 0;
    }


    clusterManagerLogInfo(">>> Sending CLUSTER RESET SOFT to the "
                          "deleted node.\n");
    redisReply *r = redisCommand(node->context, "CLUSTER RESET %s", "SOFT");
    success = clusterManagerCheckRedisReply(node, r, ((void*)0));
    if (r) freeReplyObject(r);
    return success;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
