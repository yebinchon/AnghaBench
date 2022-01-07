
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisReply ;
typedef int clusterManagerNode ;


 int * CLUSTER_MANAGER_COMMAND (int *,char*,int) ;
 int clusterManagerCheckRedisReply (int *,int *,int *) ;
 int freeReplyObject (int *) ;

__attribute__((used)) static int clusterManagerAddSlot(clusterManagerNode *node, int slot) {
    redisReply *reply = CLUSTER_MANAGER_COMMAND(node,
        "CLUSTER ADDSLOTS %d", slot);
    int success = clusterManagerCheckRedisReply(node, reply, ((void*)0));
    if (reply) freeReplyObject(reply);
    return success;
}
