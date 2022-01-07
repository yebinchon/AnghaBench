
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* module; void* info; scalar_t__ in_dict_field; int in_section; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ RedisModuleInfoCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 void* sdscatprintf (void*,char*,char*,...) ;

int RM_InfoAddFieldDouble(RedisModuleInfoCtx *ctx, char *field, double value) {
    if (!ctx->in_section)
        return REDISMODULE_ERR;
    if (ctx->in_dict_field) {
        ctx->info = sdscatprintf(ctx->info,
            "%s=%.17g,",
            field,
            value);
        return REDISMODULE_OK;
    }
    ctx->info = sdscatprintf(ctx->info,
        "%s_%s:%.17g\r\n",
        ctx->module->name,
        field,
        value);
    return REDISMODULE_OK;
}
