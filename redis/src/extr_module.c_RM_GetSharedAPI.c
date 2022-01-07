
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dictEntry ;
struct TYPE_11__ {int using; int usedby; } ;
struct TYPE_10__ {int sharedapi; } ;
struct TYPE_9__ {TYPE_4__* module; } ;
struct TYPE_8__ {void* func; TYPE_4__* module; } ;
typedef TYPE_1__ RedisModuleSharedAPI ;
typedef TYPE_2__ RedisModuleCtx ;


 int * dictFind (int ,char const*) ;
 TYPE_1__* dictGetVal (int *) ;
 int listAddNodeTail (int ,TYPE_4__*) ;
 int * listSearchKey (int ,TYPE_4__*) ;
 TYPE_3__ server ;

void *RM_GetSharedAPI(RedisModuleCtx *ctx, const char *apiname) {
    dictEntry *de = dictFind(server.sharedapi, apiname);
    if (de == ((void*)0)) return ((void*)0);
    RedisModuleSharedAPI *sapi = dictGetVal(de);
    if (listSearchKey(sapi->module->usedby,ctx->module) == ((void*)0)) {
        listAddNodeTail(sapi->module->usedby,ctx->module);
        listAddNodeTail(ctx->module->using,sapi->module);
    }
    return sapi->func;
}
