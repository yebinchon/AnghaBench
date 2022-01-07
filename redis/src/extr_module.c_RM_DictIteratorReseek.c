
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef int RedisModuleDictIter ;


 int RM_DictIteratorReseekC (int *,char const*,int ,int ) ;
 int sdslen (int ) ;

int RM_DictIteratorReseek(RedisModuleDictIter *di, const char *op, RedisModuleString *key) {
    return RM_DictIteratorReseekC(di,op,key->ptr,sdslen(key->ptr));
}
