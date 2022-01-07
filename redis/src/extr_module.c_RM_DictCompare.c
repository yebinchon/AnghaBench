
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ri; } ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef TYPE_2__ RedisModuleDictIter ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int raxCompare (int *,char const*,int ,int ) ;
 scalar_t__ raxEOF (int *) ;
 int sdslen (int ) ;

int RM_DictCompare(RedisModuleDictIter *di, const char *op, RedisModuleString *key) {
    if (raxEOF(&di->ri)) return REDISMODULE_ERR;
    int res = raxCompare(&di->ri,op,key->ptr,sdslen(key->ptr));
    return res ? REDISMODULE_OK : REDISMODULE_ERR;
}
