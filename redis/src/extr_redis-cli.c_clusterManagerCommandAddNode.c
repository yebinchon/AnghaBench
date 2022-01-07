
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_22__ {char* ip; int port; int name; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_25__ {int nodes; } ;
struct TYPE_21__ {int flags; char* master_id; } ;
struct TYPE_24__ {TYPE_1__ cluster_manager_command; } ;
struct TYPE_23__ {TYPE_2__* value; } ;


 int CLUSTER_MANAGER_CMD_FLAG_SLAVE ;
 int * CLUSTER_MANAGER_COMMAND (TYPE_2__*,char*,char*,...) ;
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_2__*,char*) ;
 int assert (int ) ;
 int clusterManagerCheckCluster (int ) ;
 int clusterManagerCheckRedisReply (TYPE_2__*,int *,int *) ;
 int clusterManagerLoadInfoFromNode (TYPE_2__*,int ) ;
 int clusterManagerLogErr (char*,char*,...) ;
 int clusterManagerLogInfo (char*,char*,int,...) ;
 int clusterManagerLogOk (char*) ;
 TYPE_2__* clusterManagerNewNode (char*,int) ;
 TYPE_2__* clusterManagerNodeByName (char*) ;
 int clusterManagerNodeConnect (TYPE_2__*) ;
 int clusterManagerNodeIsCluster (TYPE_2__*,char**) ;
 int clusterManagerNodeIsEmpty (TYPE_2__*,char**) ;
 int clusterManagerNodeLoadInfo (TYPE_2__*,int ,char**) ;
 TYPE_2__* clusterManagerNodeWithLeastReplicas () ;
 int clusterManagerPrintNotClusterNodeError (TYPE_2__*,char*) ;
 int clusterManagerPrintNotEmptyNodeError (TYPE_2__*,char*) ;
 int clusterManagerWaitForClusterJoin () ;
 TYPE_7__ cluster_manager ;
 TYPE_6__ config ;
 int fprintf (int ,char*) ;
 int freeClusterManagerNode (TYPE_2__*) ;
 int freeReplyObject (int *) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 TYPE_3__* listFirst (int ) ;
 int printf (char*,char*,int) ;
 int sleep (int) ;
 int stderr ;
 int zfree (char*) ;

__attribute__((used)) static int clusterManagerCommandAddNode(int argc, char **argv) {
    int success = 1;
    redisReply *reply = ((void*)0);
    char *ref_ip = ((void*)0), *ip = ((void*)0);
    int ref_port = 0, port = 0;
    if (!getClusterHostFromCmdArgs(argc - 1, argv + 1, &ref_ip, &ref_port))
        goto invalid_args;
    if (!getClusterHostFromCmdArgs(1, argv, &ip, &port))
        goto invalid_args;
    clusterManagerLogInfo(">>> Adding node %s:%d to cluster %s:%d\n", ip, port,
                          ref_ip, ref_port);

    clusterManagerNode *refnode = clusterManagerNewNode(ref_ip, ref_port);
    if (!clusterManagerLoadInfoFromNode(refnode, 0)) return 0;
    if (!clusterManagerCheckCluster(0)) return 0;



    clusterManagerNode *master_node = ((void*)0);
    if (config.cluster_manager_command.flags & CLUSTER_MANAGER_CMD_FLAG_SLAVE) {
        char *master_id = config.cluster_manager_command.master_id;
        if (master_id != ((void*)0)) {
            master_node = clusterManagerNodeByName(master_id);
            if (master_node == ((void*)0)) {
                clusterManagerLogErr("[ERR] No such master ID %s\n", master_id);
                return 0;
            }
        } else {
            master_node = clusterManagerNodeWithLeastReplicas();
            assert(master_node != ((void*)0));
            printf("Automatically selected master %s:%d\n", master_node->ip,
                   master_node->port);
        }
    }


    clusterManagerNode *new_node = clusterManagerNewNode(ip, port);
    int added = 0;
    if (!clusterManagerNodeConnect(new_node)) {
        clusterManagerLogErr("[ERR] Sorry, can't connect to node %s:%d\n",
                             ip, port);
        success = 0;
        goto cleanup;
    }
    char *err = ((void*)0);
    if (!(success = clusterManagerNodeIsCluster(new_node, &err))) {
        clusterManagerPrintNotClusterNodeError(new_node, err);
        if (err) zfree(err);
        goto cleanup;
    }
    if (!clusterManagerNodeLoadInfo(new_node, 0, &err)) {
        if (err) {
            CLUSTER_MANAGER_PRINT_REPLY_ERROR(new_node, err);
            zfree(err);
        }
        success = 0;
        goto cleanup;
    }
    if (!(success = clusterManagerNodeIsEmpty(new_node, &err))) {
        clusterManagerPrintNotEmptyNodeError(new_node, err);
        if (err) zfree(err);
        goto cleanup;
    }
    clusterManagerNode *first = listFirst(cluster_manager.nodes)->value;
    listAddNodeTail(cluster_manager.nodes, new_node);
    added = 1;


    clusterManagerLogInfo(">>> Send CLUSTER MEET to node %s:%d to make it "
                          "join the cluster.\n", ip, port);
    reply = CLUSTER_MANAGER_COMMAND(new_node, "CLUSTER MEET %s %d",
                                    first->ip, first->port);
    if (!(success = clusterManagerCheckRedisReply(new_node, reply, ((void*)0))))
        goto cleanup;


    if (master_node) {
        sleep(1);
        clusterManagerWaitForClusterJoin();
        clusterManagerLogInfo(">>> Configure node as replica of %s:%d.\n",
                              master_node->ip, master_node->port);
        freeReplyObject(reply);
        reply = CLUSTER_MANAGER_COMMAND(new_node, "CLUSTER REPLICATE %s",
                                        master_node->name);
        if (!(success = clusterManagerCheckRedisReply(new_node, reply, ((void*)0))))
            goto cleanup;
    }
    clusterManagerLogOk("[OK] New node added correctly.\n");
cleanup:
    if (!added && new_node) freeClusterManagerNode(new_node);
    if (reply) freeReplyObject(reply);
    return success;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
