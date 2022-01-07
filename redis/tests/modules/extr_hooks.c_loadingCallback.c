
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogNumericEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (void*) ;






void loadingCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(data);

    char *keyname = ((void*)0);
    switch (sub) {
        case 129: keyname = "loading-rdb-start"; break;
        case 132: keyname = "loading-aof-start"; break;
        case 128: keyname = "loading-repl-start"; break;
        case 131: keyname = "loading-end"; break;
        case 130: keyname = "loading-failed"; break;
    }
    LogNumericEvent(ctx, keyname, 0);
}
