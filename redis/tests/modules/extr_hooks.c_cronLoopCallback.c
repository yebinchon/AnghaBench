
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int hz; } ;
typedef int RedisModuleEvent ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ RedisModuleCronLoop ;


 int LogNumericEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (int ) ;

void cronLoopCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(sub);

    RedisModuleCronLoop *ei = data;
    LogNumericEvent(ctx, "cron-loop", ei->hz);
}
