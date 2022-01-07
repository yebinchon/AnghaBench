
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_10__ {TYPE_1__* module; } ;
struct TYPE_9__ {TYPE_1__* module; } ;
struct TYPE_8__ {int filters; } ;
typedef TYPE_2__ RedisModuleCtx ;
typedef TYPE_3__ RedisModuleCommandFilter ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,TYPE_3__*) ;
 int moduleCommandFilters ;
 int zfree (TYPE_3__*) ;

int RM_UnregisterCommandFilter(RedisModuleCtx *ctx, RedisModuleCommandFilter *filter) {
    listNode *ln;


    if (filter->module != ctx->module) return REDISMODULE_ERR;

    ln = listSearchKey(moduleCommandFilters,filter);
    if (!ln) return REDISMODULE_ERR;
    listDelNode(moduleCommandFilters,ln);

    ln = listSearchKey(ctx->module->filters,filter);
    if (!ln) return REDISMODULE_ERR;
    listDelNode(ctx->module->filters,ln);

    zfree(filter);

    return REDISMODULE_OK;
}
