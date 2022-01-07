
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int port; TYPE_1__* slaveof; int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_4__ {int name; } ;
typedef int RedisModuleCtx ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MASTER ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_NOFAILOVER ;
 int CLUSTER_NODE_PFAIL ;
 int CLUSTER_NODE_SLAVE ;
 int REDISMODULE_ERR ;
 int REDISMODULE_NODE_FAIL ;
 int REDISMODULE_NODE_ID_LEN ;
 int REDISMODULE_NODE_MASTER ;
 int REDISMODULE_NODE_MYSELF ;
 int REDISMODULE_NODE_NOFAILOVER ;
 int REDISMODULE_NODE_PFAIL ;
 int REDISMODULE_NODE_SLAVE ;
 int REDISMODULE_OK ;
 int UNUSED (int *) ;
 TYPE_2__* clusterLookupNode (char const*) ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;

int RM_GetClusterNodeInfo(RedisModuleCtx *ctx, const char *id, char *ip, char *master_id, int *port, int *flags) {
    UNUSED(ctx);

    clusterNode *node = clusterLookupNode(id);
    if (node->flags & (CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE))
        return REDISMODULE_ERR;

    if (ip) memcpy(ip,node->name,REDISMODULE_NODE_ID_LEN);

    if (master_id) {



        if (node->flags & CLUSTER_NODE_MASTER && node->slaveof)
            memcpy(master_id,node->slaveof->name,REDISMODULE_NODE_ID_LEN);
        else
            memset(master_id,0,REDISMODULE_NODE_ID_LEN);
    }
    if (port) *port = node->port;



    if (flags) {
        *flags = 0;
        if (node->flags & CLUSTER_NODE_MYSELF) *flags |= REDISMODULE_NODE_MYSELF;
        if (node->flags & CLUSTER_NODE_MASTER) *flags |= REDISMODULE_NODE_MASTER;
        if (node->flags & CLUSTER_NODE_SLAVE) *flags |= REDISMODULE_NODE_SLAVE;
        if (node->flags & CLUSTER_NODE_PFAIL) *flags |= REDISMODULE_NODE_PFAIL;
        if (node->flags & CLUSTER_NODE_FAIL) *flags |= REDISMODULE_NODE_FAIL;
        if (node->flags & CLUSTER_NODE_NOFAILOVER) *flags |= REDISMODULE_NODE_NOFAILOVER;
    }
    return REDISMODULE_OK;
}
