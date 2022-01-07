
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int cluster_enabled; } ;
struct TYPE_6__ {TYPE_1__* module; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ RedisModuleCtx ;


 scalar_t__ C_OK ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ clusterSendModuleMessageToTarget (char*,int ,int ,unsigned char*,int ) ;
 int moduleTypeEncodeId (int ,int ) ;
 TYPE_3__ server ;

int RM_SendClusterMessage(RedisModuleCtx *ctx, char *target_id, uint8_t type, unsigned char *msg, uint32_t len) {
    if (!server.cluster_enabled) return REDISMODULE_ERR;
    uint64_t module_id = moduleTypeEncodeId(ctx->module->name,0);
    if (clusterSendModuleMessageToTarget(target_id,module_id,type,msg,len) == C_OK)
        return REDISMODULE_OK;
    else
        return REDISMODULE_ERR;
}
