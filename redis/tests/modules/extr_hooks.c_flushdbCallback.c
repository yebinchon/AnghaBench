
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int dbnum; } ;
typedef TYPE_1__ RedisModuleFlushInfo ;
typedef int RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogNumericEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (int ) ;
 scalar_t__ REDISMODULE_SUBEVENT_FLUSHDB_START ;

void flushdbCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);

    RedisModuleFlushInfo *fi = data;
    char *keyname = (sub == REDISMODULE_SUBEVENT_FLUSHDB_START) ?
        "flush-start" : "flush-end";
    LogNumericEvent(ctx, keyname, fi->dbnum);
}
