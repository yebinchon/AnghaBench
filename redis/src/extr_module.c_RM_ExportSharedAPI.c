
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int sharedapi; } ;
struct TYPE_9__ {int module; } ;
struct TYPE_8__ {void* func; int module; } ;
typedef TYPE_1__ RedisModuleSharedAPI ;
typedef TYPE_2__ RedisModuleCtx ;


 scalar_t__ DICT_OK ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ dictAdd (int ,char*,TYPE_1__*) ;
 TYPE_5__ server ;
 int zfree (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

int RM_ExportSharedAPI(RedisModuleCtx *ctx, const char *apiname, void *func) {
    RedisModuleSharedAPI *sapi = zmalloc(sizeof(*sapi));
    sapi->module = ctx->module;
    sapi->func = func;
    if (dictAdd(server.sharedapi, (char*)apiname, sapi) != DICT_OK) {
        zfree(sapi);
        return REDISMODULE_ERR;
    }
    return REDISMODULE_OK;
}
