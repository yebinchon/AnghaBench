
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_6__ {int flags; int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; int cluster_enabled; } ;
struct TYPE_5__ {int nodes; } ;
typedef int RedisModuleCtx ;


 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_NOADDR ;
 size_t REDISMODULE_NODE_ID_LEN ;
 int UNUSED (int *) ;
 int * dictGetIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 size_t dictSize (int ) ;
 int memcpy (char*,int ,size_t) ;
 TYPE_3__ server ;
 void* zmalloc (size_t) ;

char **RM_GetClusterNodesList(RedisModuleCtx *ctx, size_t *numnodes) {
    UNUSED(ctx);

    if (!server.cluster_enabled) return ((void*)0);
    size_t count = dictSize(server.cluster->nodes);
    char **ids = zmalloc((count+1)*REDISMODULE_NODE_ID_LEN);
    dictIterator *di = dictGetIterator(server.cluster->nodes);
    dictEntry *de;
    int j = 0;
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        if (node->flags & (CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE)) continue;
        ids[j] = zmalloc(REDISMODULE_NODE_ID_LEN);
        memcpy(ids[j],node->name,REDISMODULE_NODE_ID_LEN);
        j++;
    }
    *numnodes = j;
    ids[j] = ((void*)0);

    dictReleaseIterator(di);
    return ids;
}
