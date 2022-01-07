
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int maxmemory_policy; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ RedisModuleKey ;


 long long LFUDecrAndReturn (int ) ;
 int MAXMEMORY_FLAG_LFU ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int estimateObjectIdleTime (int ) ;
 TYPE_2__ server ;

int RM_GetLRUOrLFU(RedisModuleKey *key, long long *lfu_freq, long long *lru_idle) {
    *lru_idle = *lfu_freq = -1;
    if (!key->value)
        return REDISMODULE_ERR;
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        *lfu_freq = LFUDecrAndReturn(key->value);
    } else {
        *lru_idle = estimateObjectIdleTime(key->value)/1000;
    }
    return REDISMODULE_OK;
}
