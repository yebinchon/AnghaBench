
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int cluster_module_flags; } ;
typedef int RedisModuleCtx ;


 int CLUSTER_MODULE_FLAG_NO_FAILOVER ;
 int CLUSTER_MODULE_FLAG_NO_REDIRECTION ;
 int REDISMODULE_CLUSTER_FLAG_NO_FAILOVER ;
 int REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION ;
 int UNUSED (int *) ;
 TYPE_1__ server ;

void RM_SetClusterFlags(RedisModuleCtx *ctx, uint64_t flags) {
    UNUSED(ctx);
    if (flags & REDISMODULE_CLUSTER_FLAG_NO_FAILOVER)
        server.cluster_module_flags |= CLUSTER_MODULE_FLAG_NO_FAILOVER;
    if (flags & REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION)
        server.cluster_module_flags |= CLUSTER_MODULE_FLAG_NO_REDIRECTION;
}
