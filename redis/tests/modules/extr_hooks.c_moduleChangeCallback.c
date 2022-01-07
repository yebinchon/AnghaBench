
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int module_name; } ;
typedef TYPE_1__ RedisModuleModuleChange ;
typedef int RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogStringEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (int ) ;
 scalar_t__ REDISMODULE_SUBEVENT_MODULE_LOADED ;

void moduleChangeCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);

    RedisModuleModuleChange *ei = data;
    char *keyname = (sub == REDISMODULE_SUBEVENT_MODULE_LOADED) ?
        "module-loaded" : "module-unloaded";
    LogStringEvent(ctx, keyname, ei->module_name);
}
