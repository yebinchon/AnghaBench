
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zer; int * zcurrent; int ztype; } ;
typedef TYPE_1__ RedisModuleKey ;


 int REDISMODULE_ZSET_RANGE_NONE ;

void zsetKeyReset(RedisModuleKey *key) {
    key->ztype = REDISMODULE_ZSET_RANGE_NONE;
    key->zcurrent = ((void*)0);
    key->zer = 1;
}
