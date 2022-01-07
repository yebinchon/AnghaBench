
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_9__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_10__ {int port; int ip; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_11__ {int nodes; } ;


 int * CLUSTER_MANAGER_COMMAND (TYPE_2__*,char*,char*,...) ;
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int UNUSED (int) ;
 int atoi (char*) ;
 int clusterManagerCheckRedisReply (TYPE_2__*,int *,char**) ;
 int clusterManagerLoadInfoFromNode (TYPE_2__*,int ) ;
 int clusterManagerLogErr (char*,int ,int ,char*) ;
 int clusterManagerLogInfo (char*,...) ;
 int clusterManagerLogWarn (char*,int ,int ) ;
 TYPE_2__* clusterManagerNewNode (char*,int) ;
 TYPE_4__ cluster_manager ;
 int fprintf (int ,char*) ;
 int freeReplyObject (int *) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int stderr ;
 int zfree (char*) ;

__attribute__((used)) static int clusterManagerCommandSetTimeout(int argc, char **argv) {
    UNUSED(argc);
    int port = 0;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(1, argv, &ip, &port)) goto invalid_args;
    int timeout = atoi(argv[1]);
    if (timeout < 100) {
        fprintf(stderr, "Setting a node timeout of less than 100 "
                "milliseconds is a bad idea.\n");
        return 0;
    }

    clusterManagerNode *node = clusterManagerNewNode(ip, port);
    if (!clusterManagerLoadInfoFromNode(node, 0)) return 0;
    int ok_count = 0, err_count = 0;

    clusterManagerLogInfo(">>> Reconfiguring node timeout in every "
                          "cluster node...\n");
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        char *err = ((void*)0);
        redisReply *reply = CLUSTER_MANAGER_COMMAND(n, "CONFIG %s %s %d",
                                                    "SET",
                                                    "cluster-node-timeout",
                                                    timeout);
        if (reply == ((void*)0)) goto reply_err;
        int ok = clusterManagerCheckRedisReply(n, reply, &err);
        freeReplyObject(reply);
        if (!ok) goto reply_err;
        reply = CLUSTER_MANAGER_COMMAND(n, "CONFIG %s", "REWRITE");
        if (reply == ((void*)0)) goto reply_err;
        ok = clusterManagerCheckRedisReply(n, reply, &err);
        freeReplyObject(reply);
        if (!ok) goto reply_err;
        clusterManagerLogWarn("*** New timeout set for %s:%d\n", n->ip,
                              n->port);
        ok_count++;
        continue;
reply_err:;
        int need_free = 0;
        if (err == ((void*)0)) err = "";
        else need_free = 1;
        clusterManagerLogErr("ERR setting node-timeot for %s:%d: %s\n", n->ip,
                             n->port, err);
        if (need_free) zfree(err);
        err_count++;
    }
    clusterManagerLogInfo(">>> New node timeout set. %d OK, %d ERR.\n",
                          ok_count, err_count);
    return 1;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
