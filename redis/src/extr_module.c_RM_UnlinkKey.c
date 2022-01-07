
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int * value; int key; int db; } ;
typedef TYPE_1__ RedisModuleKey ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int dbAsyncDelete (int ,int ) ;

int RM_UnlinkKey(RedisModuleKey *key) {
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value) {
        dbAsyncDelete(key->db,key->key);
        key->value = ((void*)0);
    }
    return REDISMODULE_OK;
}
