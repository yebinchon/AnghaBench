
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ last_val_string; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 int RedisModule_Free (TYPE_1__*) ;
 int RedisModule_FreeString (int *,scalar_t__) ;

void FreeEvent(RedisModuleCtx *ctx, EventElement *event) {
    if (event->last_val_string)
        RedisModule_FreeString(ctx, event->last_val_string);
    RedisModule_Free(event);
}
