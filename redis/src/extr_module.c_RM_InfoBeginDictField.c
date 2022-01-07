
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int in_dict_field; TYPE_1__* module; int info; int in_section; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ RedisModuleInfoCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int RM_InfoEndDictField (TYPE_2__*) ;
 int sdscatfmt (int ,char*,int ,char*) ;

int RM_InfoBeginDictField(RedisModuleInfoCtx *ctx, char *name) {
    if (!ctx->in_section)
        return REDISMODULE_ERR;

    if (ctx->in_dict_field)
        RM_InfoEndDictField(ctx);
    ctx->info = sdscatfmt(ctx->info,
        "%s_%s:",
        ctx->module->name,
        name);
    ctx->in_dict_field = 1;
    return REDISMODULE_OK;
}
