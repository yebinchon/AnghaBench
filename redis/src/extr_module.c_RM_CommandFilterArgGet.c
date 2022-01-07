
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc; int const** argv; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleCommandFilterCtx ;



const RedisModuleString *RM_CommandFilterArgGet(RedisModuleCommandFilterCtx *fctx, int pos)
{
    if (pos < 0 || pos >= fctx->argc) return ((void*)0);
    return fctx->argv[pos];
}
