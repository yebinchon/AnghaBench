
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc; int * argv; } ;
typedef TYPE_1__ RedisModuleCommandFilterCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int decrRefCount (int ) ;

int RM_CommandFilterArgDelete(RedisModuleCommandFilterCtx *fctx, int pos)
{
    int i;
    if (pos < 0 || pos >= fctx->argc) return REDISMODULE_ERR;

    decrRefCount(fctx->argv[pos]);
    for (i = pos; i < fctx->argc-1; i++) {
        fctx->argv[i] = fctx->argv[i+1];
    }
    fctx->argc--;

    return REDISMODULE_OK;
}
