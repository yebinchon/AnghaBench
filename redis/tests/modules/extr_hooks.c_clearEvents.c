
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last_val_string; scalar_t__ last_val_int; scalar_t__ count; } ;
typedef int RedisModuleString ;
typedef int RedisModuleDictIter ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 int RedisModule_DictDel (int ,int *,int *) ;
 int * RedisModule_DictIteratorStart (int ,char*,int *) ;
 int RedisModule_DictIteratorStop (int *) ;
 int * RedisModule_DictNext (int *,int *,void**) ;
 int RedisModule_Free (TYPE_1__*) ;
 int RedisModule_FreeString (int *,int *) ;
 int event_log ;

void clearEvents(RedisModuleCtx *ctx)
{
    RedisModuleString *key;
    EventElement *event;
    RedisModuleDictIter *iter = RedisModule_DictIteratorStart(event_log, "^", ((void*)0));
    while((key = RedisModule_DictNext(ctx, iter, (void**)&event)) != ((void*)0)) {
        event->count = 0;
        event->last_val_int = 0;
        if (event->last_val_string) RedisModule_FreeString(ctx, event->last_val_string);
        event->last_val_string = ((void*)0);
        RedisModule_DictDel(event_log, key, ((void*)0));
        RedisModule_Free(event);
    }
    RedisModule_DictIteratorStop(iter);
}
