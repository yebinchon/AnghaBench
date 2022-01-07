
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc; int ** argv; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleCommandFilterCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int ** zrealloc (int **,int) ;

int RM_CommandFilterArgInsert(RedisModuleCommandFilterCtx *fctx, int pos, RedisModuleString *arg)
{
    int i;

    if (pos < 0 || pos > fctx->argc) return REDISMODULE_ERR;

    fctx->argv = zrealloc(fctx->argv, (fctx->argc+1)*sizeof(RedisModuleString *));
    for (i = fctx->argc; i > pos; i--) {
        fctx->argv[i] = fctx->argv[i-1];
    }
    fctx->argv[pos] = arg;
    fctx->argc++;

    return REDISMODULE_OK;
}
