
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ sds ;
typedef int redisReply ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_9__ {char* ip; int port; int context; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_10__ {int nodes; } ;


 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int REDIS_OK ;
 scalar_t__ cliFormatReplyRaw (int *) ;
 int clusterManagerLoadInfoFromNode (TYPE_2__*,int ) ;
 int clusterManagerLogInfo (char*) ;
 TYPE_2__* clusterManagerNewNode (char*,int) ;
 int clusterManagerNodeConnect (TYPE_2__*) ;
 TYPE_4__ cluster_manager ;
 int fprintf (int ,char*) ;
 int freeReplyObject (int *) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int printf (char*,...) ;
 int redisAppendCommandArgv (int ,int,char const**,size_t*) ;
 int redisGetReply (int ,void**) ;
 int sdsfree (scalar_t__) ;
 int stderr ;
 size_t strlen (char*) ;
 int zfree (size_t*) ;
 size_t* zmalloc (int) ;

__attribute__((used)) static int clusterManagerCommandCall(int argc, char **argv) {
    int port = 0, i;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(1, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *refnode = clusterManagerNewNode(ip, port);
    if (!clusterManagerLoadInfoFromNode(refnode, 0)) return 0;
    argc--;
    argv++;
    size_t *argvlen = zmalloc(argc*sizeof(size_t));
    clusterManagerLogInfo(">>> Calling");
    for (i = 0; i < argc; i++) {
        argvlen[i] = strlen(argv[i]);
        printf(" %s", argv[i]);
    }
    printf("\n");
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (!n->context && !clusterManagerNodeConnect(n)) continue;
        redisReply *reply = ((void*)0);
        redisAppendCommandArgv(n->context, argc, (const char **) argv, argvlen);
        int status = redisGetReply(n->context, (void **)(&reply));
        if (status != REDIS_OK || reply == ((void*)0) )
            printf("%s:%d: Failed!\n", n->ip, n->port);
        else {
            sds formatted_reply = cliFormatReplyRaw(reply);
            printf("%s:%d: %s\n", n->ip, n->port, (char *) formatted_reply);
            sdsfree(formatted_reply);
        }
        if (reply != ((void*)0)) freeReplyObject(reply);
    }
    zfree(argvlen);
    return 1;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
