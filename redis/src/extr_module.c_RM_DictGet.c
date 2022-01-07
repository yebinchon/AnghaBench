
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef int RedisModuleDict ;


 void* RM_DictGetC (int *,int ,int ,int*) ;
 int sdslen (int ) ;

void *RM_DictGet(RedisModuleDict *d, RedisModuleString *key, int *nokey) {
    return RM_DictGetC(d,key->ptr,sdslen(key->ptr),nokey);
}
