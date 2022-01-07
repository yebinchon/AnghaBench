
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int str; } ;
typedef TYPE_1__ redisReply ;
typedef int clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (int *,char*) ;
 int clusterManagerCheckRedisReply (int *,TYPE_1__*,char**) ;
 TYPE_1__* clusterManagerGetNodeRedisInfo (int *,char**) ;
 int freeReplyObject (TYPE_1__*) ;
 long getLongInfoField (int ,char*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int clusterManagerNodeIsEmpty(clusterManagerNode *node, char **err) {
    redisReply *info = clusterManagerGetNodeRedisInfo(node, err);
    int is_empty = 1;
    if (info == ((void*)0)) return 0;
    if (strstr(info->str, "db0:") != ((void*)0)) {
        is_empty = 0;
        goto result;
    }
    freeReplyObject(info);
    info = CLUSTER_MANAGER_COMMAND(node, "CLUSTER INFO");
    if (err != ((void*)0)) *err = ((void*)0);
    if (!clusterManagerCheckRedisReply(node, info, err)) {
        is_empty = 0;
        goto result;
    }
    long known_nodes = getLongInfoField(info->str, "cluster_known_nodes");
    is_empty = (known_nodes == 1);
result:
    freeReplyObject(info);
    return is_empty;
}
