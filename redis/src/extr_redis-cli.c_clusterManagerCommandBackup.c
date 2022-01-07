
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_12__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_13__ {int port; int ip; scalar_t__ replicate; } ;
typedef TYPE_3__ clusterManagerNode ;
struct TYPE_15__ {int nodes; int errors; } ;
struct TYPE_11__ {char* backup_dir; } ;
struct TYPE_14__ {TYPE_1__ cluster_manager_command; } ;
typedef int FILE ;


 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int UNUSED (int) ;
 int clusterManagerCheckCluster (int ) ;
 int clusterManagerLoadInfoFromNode (TYPE_3__*,int ) ;
 int clusterManagerLogErr (char*,char*) ;
 int clusterManagerLogInfo (char*,char*,...) ;
 int clusterManagerLogOk (char*,...) ;
 int clusterManagerLogWarn (char*) ;
 TYPE_3__* clusterManagerNewNode (char*,int) ;
 char* clusterManagerNodeGetJSON (TYPE_3__*,int) ;
 TYPE_7__ cluster_manager ;
 TYPE_6__ config ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fputs (char*,int *) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 int getRDB (TYPE_3__*) ;
 int listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 char* sdscat (char*,char*) ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnew (char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int clusterManagerCommandBackup(int argc, char **argv) {
    UNUSED(argc);
    int success = 1, port = 0;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(1, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *refnode = clusterManagerNewNode(ip, port);
    if (!clusterManagerLoadInfoFromNode(refnode, 0)) return 0;
    int no_issues = clusterManagerCheckCluster(0);
    int cluster_errors_count = (no_issues ? 0 :
                                listLength(cluster_manager.errors));
    config.cluster_manager_command.backup_dir = argv[1];

    sds json = sdsnew("[\n");
    int first_node = 0;
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        if (!first_node) first_node = 1;
        else json = sdscat(json, ",\n");
        clusterManagerNode *node = ln->value;
        sds node_json = clusterManagerNodeGetJSON(node, cluster_errors_count);
        json = sdscat(json, node_json);
        sdsfree(node_json);
        if (node->replicate)
            continue;
        clusterManagerLogInfo(">>> Node %s:%d -> Saving RDB...\n",
                              node->ip, node->port);
        fflush(stdout);
        getRDB(node);
    }
    json = sdscat(json, "\n]");
    sds jsonpath = sdsnew(config.cluster_manager_command.backup_dir);
    if (jsonpath[sdslen(jsonpath) - 1] != '/')
        jsonpath = sdscat(jsonpath, "/");
    jsonpath = sdscat(jsonpath, "nodes.json");
    fflush(stdout);
    clusterManagerLogInfo("Saving cluster configuration to: %s\n", jsonpath);
    FILE *out = fopen(jsonpath, "w+");
    if (!out) {
        clusterManagerLogErr("Could not save nodes to: %s\n", jsonpath);
        success = 0;
        goto cleanup;
    }
    fputs(json, out);
    fclose(out);
cleanup:
    sdsfree(json);
    sdsfree(jsonpath);
    if (success) {
        if (!no_issues) {
            clusterManagerLogWarn("*** Cluster seems to have some problems, "
                                  "please be aware of it if you're going "
                                  "to restore this backup.\n");
        }
        clusterManagerLogOk("[OK] Backup created into: %s\n",
                            config.cluster_manager_command.backup_dir);
    } else clusterManagerLogOk("[ERR] Failed to back cluster!\n");
    return success;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
