
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_15__ {int * module; } ;
struct TYPE_14__ {scalar_t__ id; } ;
struct TYPE_13__ {int * callback; TYPE_3__ event; int * module; } ;
typedef TYPE_2__ RedisModuleEventListener ;
typedef int * RedisModuleEventCallback ;
typedef TYPE_3__ RedisModuleEvent ;
typedef TYPE_4__ RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int RedisModule_EventListeners ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int zfree (TYPE_2__*) ;
 TYPE_2__* zmalloc (int) ;

int RM_SubscribeToServerEvent(RedisModuleCtx *ctx, RedisModuleEvent event, RedisModuleEventCallback callback) {
    RedisModuleEventListener *el;


    if (ctx->module == ((void*)0)) return REDISMODULE_ERR;


    listIter li;
    listNode *ln;
    listRewind(RedisModule_EventListeners,&li);
    while((ln = listNext(&li))) {
        el = ln->value;
        if (el->module == ctx->module && el->event.id == event.id)
            break;
    }


    if (ln) {
        if (callback == ((void*)0)) {
            listDelNode(RedisModule_EventListeners,ln);
            zfree(el);
        } else {
            el->callback = callback;
        }
        return REDISMODULE_OK;
    }


    el = zmalloc(sizeof(*el));
    el->module = ctx->module;
    el->event = event;
    el->callback = callback;
    listAddNodeTail(RedisModule_EventListeners,el);
    return REDISMODULE_OK;
}
