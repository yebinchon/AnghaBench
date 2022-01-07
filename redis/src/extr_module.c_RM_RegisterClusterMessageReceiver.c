
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ module_id; struct TYPE_10__* next; void* callback; TYPE_1__* module; } ;
typedef TYPE_2__ moduleClusterReceiver ;
struct TYPE_12__ {int cluster_enabled; } ;
struct TYPE_11__ {TYPE_1__* module; } ;
struct TYPE_9__ {int name; } ;
typedef TYPE_3__ RedisModuleCtx ;
typedef void* RedisModuleClusterMessageReceiver ;


 TYPE_2__** clusterReceivers ;
 scalar_t__ moduleTypeEncodeId (int ,int ) ;
 TYPE_6__ server ;
 int zfree (TYPE_2__*) ;
 TYPE_2__* zmalloc (int) ;

void RM_RegisterClusterMessageReceiver(RedisModuleCtx *ctx, uint8_t type, RedisModuleClusterMessageReceiver callback) {
    if (!server.cluster_enabled) return;

    uint64_t module_id = moduleTypeEncodeId(ctx->module->name,0);
    moduleClusterReceiver *r = clusterReceivers[type], *prev = ((void*)0);
    while(r) {
        if (r->module_id == module_id) {

            if (callback) {
                r->callback = callback;
            } else {



                if (prev)
                    prev->next = r->next;
                else
                    clusterReceivers[type]->next = r->next;
                zfree(r);
            }
            return;
        }
        prev = r;
        r = r->next;
    }


    if (callback) {
        r = zmalloc(sizeof(*r));
        r->module_id = module_id;
        r->module = ctx->module;
        r->callback = callback;
        r->next = clusterReceivers[type];
        clusterReceivers[type] = r;
    }
}
