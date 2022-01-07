
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ RedisModuleKey ;


 int LRU_CLOCK () ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ objectSetLRUOrLFU (int ,long long,long long,int ) ;

int RM_SetLRUOrLFU(RedisModuleKey *key, long long lfu_freq, long long lru_idle) {
    if (!key->value)
        return REDISMODULE_ERR;
    if (objectSetLRUOrLFU(key->value, lfu_freq, lru_idle, lru_idle>=0 ? LRU_CLOCK() : 0))
        return REDISMODULE_OK;
    return REDISMODULE_ERR;
}
