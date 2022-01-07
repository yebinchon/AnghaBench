
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int * value; int key; int db; scalar_t__ iter; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleKey ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int RM_DeleteKey (TYPE_1__*) ;
 int setKey (int ,int ,int *) ;

int RM_StringSet(RedisModuleKey *key, RedisModuleString *str) {
    if (!(key->mode & REDISMODULE_WRITE) || key->iter) return REDISMODULE_ERR;
    RM_DeleteKey(key);
    setKey(key->db,key->key,str);
    key->value = str;
    return REDISMODULE_OK;
}
