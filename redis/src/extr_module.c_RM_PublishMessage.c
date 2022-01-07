
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cluster_enabled; } ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int UNUSED (int *) ;
 int clusterPropagatePublish (int *,int *) ;
 int pubsubPublishMessage (int *,int *) ;
 TYPE_1__ server ;

int RM_PublishMessage(RedisModuleCtx *ctx, RedisModuleString *channel, RedisModuleString *message) {
    UNUSED(ctx);
    int receivers = pubsubPublishMessage(channel, message);
    if (server.cluster_enabled)
        clusterPropagatePublish(channel, message);
    return receivers;
}
