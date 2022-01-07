
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sds ;
struct TYPE_8__ {TYPE_1__* module; void* info; scalar_t__ in_dict_field; int in_section; } ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ RedisModuleString ;
typedef TYPE_3__ RedisModuleInfoCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 void* sdscatfmt (void*,char*,char*,char*,...) ;

int RM_InfoAddFieldString(RedisModuleInfoCtx *ctx, char *field, RedisModuleString *value) {
    if (!ctx->in_section)
        return REDISMODULE_ERR;
    if (ctx->in_dict_field) {
        ctx->info = sdscatfmt(ctx->info,
            "%s=%S,",
            field,
            (sds)value->ptr);
        return REDISMODULE_OK;
    }
    ctx->info = sdscatfmt(ctx->info,
        "%s_%s:%S\r\n",
        ctx->module->name,
        field,
        (sds)value->ptr);
    return REDISMODULE_OK;
}
