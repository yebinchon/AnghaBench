
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int module; } ;
struct TYPE_6__ {int event_mask; scalar_t__ active; int notify_callback; int module; } ;
typedef int RedisModuleNotificationFunc ;
typedef TYPE_1__ RedisModuleKeyspaceSubscriber ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_OK ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int moduleKeyspaceSubscribers ;
 TYPE_1__* zmalloc (int) ;

int RM_SubscribeToKeyspaceEvents(RedisModuleCtx *ctx, int types, RedisModuleNotificationFunc callback) {
    RedisModuleKeyspaceSubscriber *sub = zmalloc(sizeof(*sub));
    sub->module = ctx->module;
    sub->event_mask = types;
    sub->notify_callback = callback;
    sub->active = 0;

    listAddNodeTail(moduleKeyspaceSubscribers, sub);
    return REDISMODULE_OK;
}
