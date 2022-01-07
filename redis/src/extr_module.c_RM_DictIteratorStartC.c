
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rax; } ;
struct TYPE_6__ {int ri; TYPE_2__* dict; } ;
typedef TYPE_1__ RedisModuleDictIter ;
typedef TYPE_2__ RedisModuleDict ;


 int raxSeek (int *,char const*,void*,size_t) ;
 int raxStart (int *,int ) ;
 TYPE_1__* zmalloc (int) ;

RedisModuleDictIter *RM_DictIteratorStartC(RedisModuleDict *d, const char *op, void *key, size_t keylen) {
    RedisModuleDictIter *di = zmalloc(sizeof(*di));
    di->dict = d;
    raxStart(&di->ri,d->rax);
    raxSeek(&di->ri,op,key,keylen);
    return di;
}
