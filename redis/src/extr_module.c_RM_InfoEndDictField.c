
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* info; scalar_t__ in_dict_field; } ;
typedef TYPE_1__ RedisModuleInfoCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int sdsIncrLen (char*,int) ;
 char* sdscat (char*,char*) ;
 int sdslen (char*) ;

int RM_InfoEndDictField(RedisModuleInfoCtx *ctx) {
    if (!ctx->in_dict_field)
        return REDISMODULE_ERR;

    if (ctx->info[sdslen(ctx->info)-1]==',')
        sdsIncrLen(ctx->info, -1);
    ctx->info = sdscat(ctx->info, "\r\n");
    ctx->in_dict_field = 0;
    return REDISMODULE_OK;
}
