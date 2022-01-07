
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogNumericEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (void*) ;





 int RedisModule_Log (int *,char*,char*,char*) ;

void persistenceCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(data);

    char *keyname = ((void*)0);
    switch (sub) {
        case 129: keyname = "persistence-rdb-start"; break;
        case 132: keyname = "persistence-aof-start"; break;
        case 128: keyname = "persistence-syncrdb-start"; break;
        case 131: keyname = "persistence-end"; break;
        case 130: keyname = "persistence-failed"; break;
    }

    RedisModule_Log(ctx, "warning", "module-event-%s", keyname);
    if (sub == 128)
        LogNumericEvent(ctx, keyname, 0);
}
