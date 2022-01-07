
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_16__ {TYPE_4__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_23__ {int * user; int flags; } ;
struct TYPE_22__ {scalar_t__ id; int dataver; } ;
struct TYPE_21__ {int in_hook; int ver; int name; } ;
struct TYPE_20__ {TYPE_9__* client; TYPE_6__* module; } ;
struct TYPE_19__ {TYPE_6__* module; TYPE_8__ event; int (* callback ) (TYPE_5__*,TYPE_8__,int,void*) ;} ;
struct TYPE_18__ {int dbnum; } ;
struct TYPE_17__ {int module_version; int module_name; int version; } ;
typedef int RedisModuleReplicationInfoV1 ;
typedef TYPE_2__ RedisModuleModuleChangeV1 ;
typedef TYPE_3__ RedisModuleFlushInfoV1 ;
typedef TYPE_4__ RedisModuleEventListener ;
typedef TYPE_5__ RedisModuleCtx ;
typedef int RedisModuleClientInfoV1 ;
typedef TYPE_6__ RedisModule ;


 int CLIENT_MODULE ;
 scalar_t__ ModulesInHooks ;
 TYPE_5__ REDISMODULE_CTX_INIT ;
 scalar_t__ REDISMODULE_EVENT_CLIENT_CHANGE ;
 scalar_t__ REDISMODULE_EVENT_CRON_LOOP ;
 scalar_t__ REDISMODULE_EVENT_FLUSHDB ;
 scalar_t__ REDISMODULE_EVENT_LOADING_PROGRESS ;
 scalar_t__ REDISMODULE_EVENT_MODULE_CHANGE ;
 scalar_t__ REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED ;
 int REDISMODULE_MODULE_CHANGE_VERSION ;
 int RedisModule_EventListeners ;
 TYPE_9__* createClient (int *) ;
 int freeClient (TYPE_9__*) ;
 scalar_t__ listLength (int ) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int moduleFreeContext (TYPE_5__*) ;
 TYPE_9__* moduleFreeContextReusedClient ;
 int modulePopulateClientInfoStructure (int *,void*,int ) ;
 int modulePopulateReplicationInfoStructure (int *,int ) ;
 int selectDb (TYPE_9__*,int) ;
 int stub1 (TYPE_5__*,TYPE_8__,int,void*) ;

void moduleFireServerEvent(uint64_t eid, int subid, void *data) {



    if (listLength(RedisModule_EventListeners) == 0) return;

    listIter li;
    listNode *ln;
    listRewind(RedisModule_EventListeners,&li);
    while((ln = listNext(&li))) {
        RedisModuleEventListener *el = ln->value;
        if (el->event.id == eid) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.module = el->module;

            if (ModulesInHooks == 0) {
                ctx.client = moduleFreeContextReusedClient;
            } else {
                ctx.client = createClient(((void*)0));
                ctx.client->flags |= CLIENT_MODULE;
                ctx.client->user = ((void*)0);
            }

            void *moduledata = ((void*)0);
            RedisModuleClientInfoV1 civ1;
            RedisModuleReplicationInfoV1 riv1;
            RedisModuleModuleChangeV1 mcv1;




            selectDb(ctx.client, 0);


            if (eid == REDISMODULE_EVENT_CLIENT_CHANGE) {
                modulePopulateClientInfoStructure(&civ1,data,
                                                  el->event.dataver);
                moduledata = &civ1;
            } else if (eid == REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED) {
                modulePopulateReplicationInfoStructure(&riv1,el->event.dataver);
                moduledata = &riv1;
            } else if (eid == REDISMODULE_EVENT_FLUSHDB) {
                moduledata = data;
                RedisModuleFlushInfoV1 *fi = data;
                if (fi->dbnum != -1)
                    selectDb(ctx.client, fi->dbnum);
            } else if (eid == REDISMODULE_EVENT_MODULE_CHANGE) {
                RedisModule *m = data;
                if (m == el->module)
                    continue;
                mcv1.version = REDISMODULE_MODULE_CHANGE_VERSION;
                mcv1.module_name = m->name;
                mcv1.module_version = m->ver;
                moduledata = &mcv1;
            } else if (eid == REDISMODULE_EVENT_LOADING_PROGRESS) {
                moduledata = data;
            } else if (eid == REDISMODULE_EVENT_CRON_LOOP) {
                moduledata = data;
            }

            ModulesInHooks++;
            el->module->in_hook++;
            el->callback(&ctx,el->event,subid,moduledata);
            el->module->in_hook--;
            ModulesInHooks--;

            if (ModulesInHooks != 0) freeClient(ctx.client);
            moduleFreeContext(&ctx);
        }
    }
}
