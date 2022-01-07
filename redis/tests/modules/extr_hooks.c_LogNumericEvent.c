
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long last_val_int; int count; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 int REDISMODULE_NOT_USED (int *) ;
 TYPE_1__* RedisModule_Alloc (int) ;
 TYPE_1__* RedisModule_DictGetC (int ,void*,int ,int *) ;
 int RedisModule_DictSetC (int ,void*,int ,TYPE_1__*) ;
 int event_log ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

void LogNumericEvent(RedisModuleCtx *ctx, const char* keyname, long data) {
    REDISMODULE_NOT_USED(ctx);
    EventElement *event = RedisModule_DictGetC(event_log, (void*)keyname, strlen(keyname), ((void*)0));
    if (!event) {
        event = RedisModule_Alloc(sizeof(EventElement));
        memset(event, 0, sizeof(EventElement));
        RedisModule_DictSetC(event_log, (void*)keyname, strlen(keyname), event);
    }
    event->last_val_int = data;
    event->count++;
}
