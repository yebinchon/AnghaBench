
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef int RedisModuleDict ;


 int RM_DictDelC (int *,int ,int ,void*) ;
 int sdslen (int ) ;

int RM_DictDel(RedisModuleDict *d, RedisModuleString *key, void *oldval) {
    return RM_DictDelC(d,key->ptr,sdslen(key->ptr),oldval);
}
