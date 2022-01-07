
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_6__ {int in_section; char* info; int sections; TYPE_1__* module; scalar_t__ requested_section; scalar_t__ in_dict_field; } ;
struct TYPE_5__ {char* name; } ;
typedef TYPE_2__ RedisModuleInfoCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int RM_InfoEndDictField (TYPE_2__*) ;
 char* sdscat (char*,char*) ;
 void* sdscatfmt (char*,char*,char*) ;
 char* sdsdup (char*) ;
 int sdsfree (char*) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 scalar_t__ strlen (char*) ;

int RM_InfoAddSection(RedisModuleInfoCtx *ctx, char *name) {
    sds full_name = sdsdup(ctx->module->name);
    if (name != ((void*)0) && strlen(name) > 0)
        full_name = sdscatfmt(full_name, "_%s", name);


    if (ctx->in_dict_field)
        RM_InfoEndDictField(ctx);





    if (ctx->requested_section) {
        if (strcasecmp(ctx->requested_section, full_name) &&
            strcasecmp(ctx->requested_section, ctx->module->name)) {
            sdsfree(full_name);
            ctx->in_section = 0;
            return REDISMODULE_ERR;
        }
    }
    if (ctx->sections++) ctx->info = sdscat(ctx->info,"\r\n");
    ctx->info = sdscatfmt(ctx->info, "# %S\r\n", full_name);
    ctx->in_section = 1;
    sdsfree(full_name);
    return REDISMODULE_OK;
}
