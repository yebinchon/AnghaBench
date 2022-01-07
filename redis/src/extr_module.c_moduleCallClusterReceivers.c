
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ module_id; struct TYPE_7__* next; int (* callback ) (TYPE_2__*,char const*,size_t,unsigned char const*,int ) ;int module; } ;
typedef TYPE_1__ moduleClusterReceiver ;
struct TYPE_8__ {int client; int module; } ;
typedef TYPE_2__ RedisModuleCtx ;


 TYPE_2__ REDISMODULE_CTX_INIT ;
 TYPE_1__** clusterReceivers ;
 int moduleFreeContext (TYPE_2__*) ;
 int moduleFreeContextReusedClient ;
 int selectDb (int ,int ) ;
 int stub1 (TYPE_2__*,char const*,size_t,unsigned char const*,int ) ;

void moduleCallClusterReceivers(const char *sender_id, uint64_t module_id, uint8_t type, const unsigned char *payload, uint32_t len) {
    moduleClusterReceiver *r = clusterReceivers[type];
    while(r) {
        if (r->module_id == module_id) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.module = r->module;
            ctx.client = moduleFreeContextReusedClient;
            selectDb(ctx.client, 0);
            r->callback(&ctx,sender_id,type,payload,len);
            moduleFreeContext(&ctx);
            return;
        }
        r = r->next;
    }
}
