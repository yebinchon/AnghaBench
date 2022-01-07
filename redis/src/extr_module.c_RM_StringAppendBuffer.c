
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int UNUSED (int *) ;
 TYPE_1__* moduleAssertUnsharedString (TYPE_1__*) ;
 int sdscatlen (int ,char const*,size_t) ;

int RM_StringAppendBuffer(RedisModuleCtx *ctx, RedisModuleString *str, const char *buf, size_t len) {
    UNUSED(ctx);
    str = moduleAssertUnsharedString(str);
    if (str == ((void*)0)) return REDISMODULE_ERR;
    str->ptr = sdscatlen(str->ptr,buf,len);
    return REDISMODULE_OK;
}
