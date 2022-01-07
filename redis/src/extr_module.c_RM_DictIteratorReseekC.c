
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ri; } ;
typedef TYPE_1__ RedisModuleDictIter ;


 int raxSeek (int *,char const*,void*,size_t) ;

int RM_DictIteratorReseekC(RedisModuleDictIter *di, const char *op, void *key, size_t keylen) {
    return raxSeek(&di->ri,op,key,keylen);
}
