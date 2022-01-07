
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_10__ {int client; int module; } ;
struct TYPE_9__ {int event_mask; int active; int (* notify_callback ) (TYPE_3__*,int,char const*,int *) ;int module; } ;
typedef TYPE_2__ RedisModuleKeyspaceSubscriber ;
typedef TYPE_3__ RedisModuleCtx ;


 int NOTIFY_KEYEVENT ;
 int NOTIFY_KEYSPACE ;
 TYPE_3__ REDISMODULE_CTX_INIT ;
 scalar_t__ listLength (int ) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int moduleFreeContext (TYPE_3__*) ;
 int moduleFreeContextReusedClient ;
 int moduleKeyspaceSubscribers ;
 int selectDb (int ,int) ;
 int stub1 (TYPE_3__*,int,char const*,int *) ;

void moduleNotifyKeyspaceEvent(int type, const char *event, robj *key, int dbid) {

    if (listLength(moduleKeyspaceSubscribers) == 0) return;

    listIter li;
    listNode *ln;
    listRewind(moduleKeyspaceSubscribers,&li);


    type &= ~(NOTIFY_KEYEVENT | NOTIFY_KEYSPACE);

    while((ln = listNext(&li))) {
        RedisModuleKeyspaceSubscriber *sub = ln->value;


        if ((sub->event_mask & type) && sub->active == 0) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.module = sub->module;
            ctx.client = moduleFreeContextReusedClient;
            selectDb(ctx.client, dbid);




            sub->active = 1;
            sub->notify_callback(&ctx, type, event, key);
            sub->active = 0;
            moduleFreeContext(&ctx);
        }
    }
}
