
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rax; } ;
typedef TYPE_1__ RedisModuleDict ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int raxTryInsert (int ,void*,size_t,void*,int *) ;

int RM_DictSetC(RedisModuleDict *d, void *key, size_t keylen, void *ptr) {
    int retval = raxTryInsert(d->rax,key,keylen,ptr,((void*)0));
    return (retval == 1) ? REDISMODULE_OK : REDISMODULE_ERR;
}
