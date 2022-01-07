
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int masterhost; } ;
typedef TYPE_1__ RedisModuleReplicationInfo ;
typedef void* RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogStringEvent (int *,char*,int ) ;
 scalar_t__ REDISMODULE_EVENT_REPLROLECHANGED_NOW_MASTER ;
 int REDISMODULE_NOT_USED (void*) ;

void roleChangeCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(data);

    RedisModuleReplicationInfo *ri = data;
    char *keyname = (sub == REDISMODULE_EVENT_REPLROLECHANGED_NOW_MASTER) ?
        "role-master" : "role-replica";
    LogStringEvent(ctx, keyname, ri->masterhost);
}
