
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef int RedisModuleDictIter ;
typedef int RedisModuleDict ;


 int * RM_DictIteratorStartC (int *,char const*,int ,int ) ;
 int sdslen (int ) ;

RedisModuleDictIter *RM_DictIteratorStart(RedisModuleDict *d, const char *op, RedisModuleString *key) {
    return RM_DictIteratorStartC(d,op,key->ptr,sdslen(key->ptr));
}
