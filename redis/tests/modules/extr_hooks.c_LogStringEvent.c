
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; scalar_t__ last_val_string; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 TYPE_1__* RedisModule_Alloc (int) ;
 scalar_t__ RedisModule_CreateString (int *,char const*,int ) ;
 TYPE_1__* RedisModule_DictGetC (int ,void*,int ,int *) ;
 int RedisModule_DictSetC (int ,void*,int ,TYPE_1__*) ;
 int RedisModule_FreeString (int *,scalar_t__) ;
 int event_log ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

void LogStringEvent(RedisModuleCtx *ctx, const char* keyname, const char* data) {
    EventElement *event = RedisModule_DictGetC(event_log, (void*)keyname, strlen(keyname), ((void*)0));
    if (!event) {
        event = RedisModule_Alloc(sizeof(EventElement));
        memset(event, 0, sizeof(EventElement));
        RedisModule_DictSetC(event_log, (void*)keyname, strlen(keyname), event);
    }
    if (event->last_val_string) RedisModule_FreeString(ctx, event->last_val_string);
    event->last_val_string = RedisModule_CreateString(ctx, data, strlen(data));
    event->count++;
}
