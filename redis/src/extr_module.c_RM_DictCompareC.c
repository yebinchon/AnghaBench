
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ri; } ;
typedef TYPE_1__ RedisModuleDictIter ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int raxCompare (int *,char const*,void*,size_t) ;
 scalar_t__ raxEOF (int *) ;

int RM_DictCompareC(RedisModuleDictIter *di, const char *op, void *key, size_t keylen) {
    if (raxEOF(&di->ri)) return REDISMODULE_ERR;
    int res = raxCompare(&di->ri,op,key,keylen);
    return res ? REDISMODULE_OK : REDISMODULE_ERR;
}
