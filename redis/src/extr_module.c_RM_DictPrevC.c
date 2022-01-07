
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t key_len; void* key; void* data; } ;
struct TYPE_4__ {TYPE_2__ ri; } ;
typedef TYPE_1__ RedisModuleDictIter ;


 int raxPrev (TYPE_2__*) ;

void *RM_DictPrevC(RedisModuleDictIter *di, size_t *keylen, void **dataptr) {
    if (!raxPrev(&di->ri)) return ((void*)0);
    if (keylen) *keylen = di->ri.key_len;
    if (dataptr) *dataptr = di->ri.data;
    return di->ri.key;
}
