
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rax; } ;
typedef TYPE_1__ RedisModuleDict ;


 void* raxFind (int ,void*,size_t) ;
 void* raxNotFound ;

void *RM_DictGetC(RedisModuleDict *d, void *key, size_t keylen, int *nokey) {
    void *res = raxFind(d->rax,key,keylen);
    if (nokey) *nokey = (res == raxNotFound);
    return (res == raxNotFound) ? ((void*)0) : res;
}
