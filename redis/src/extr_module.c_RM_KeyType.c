
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* value; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_2__ RedisModuleKey ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 int REDISMODULE_KEYTYPE_HASH ;
 int REDISMODULE_KEYTYPE_LIST ;
 int REDISMODULE_KEYTYPE_MODULE ;
 int REDISMODULE_KEYTYPE_SET ;
 int REDISMODULE_KEYTYPE_STRING ;
 int REDISMODULE_KEYTYPE_ZSET ;

int RM_KeyType(RedisModuleKey *key) {
    if (key == ((void*)0) || key->value == ((void*)0)) return REDISMODULE_KEYTYPE_EMPTY;


    switch(key->value->type) {
    case 129: return REDISMODULE_KEYTYPE_STRING;
    case 132: return REDISMODULE_KEYTYPE_LIST;
    case 130: return REDISMODULE_KEYTYPE_SET;
    case 128: return REDISMODULE_KEYTYPE_ZSET;
    case 133: return REDISMODULE_KEYTYPE_HASH;
    case 131: return REDISMODULE_KEYTYPE_MODULE;
    default: return 0;
    }
}
