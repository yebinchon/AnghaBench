
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ztype; int zlrs; } ;
typedef TYPE_1__ RedisModuleKey ;


 scalar_t__ REDISMODULE_ZSET_RANGE_LEX ;
 int zsetKeyReset (TYPE_1__*) ;
 int zslFreeLexRange (int *) ;

void RM_ZsetRangeStop(RedisModuleKey *key) {

    if (key->ztype == REDISMODULE_ZSET_RANGE_LEX)
        zslFreeLexRange(&key->zlrs);



    zsetKeyReset(key);
}
