
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_5__ {int mode; int key; int db; TYPE_1__* ctx; int * value; } ;
struct TYPE_4__ {int client; } ;
typedef TYPE_2__ RedisModuleKey ;


 int REDISMODULE_ERR ;
 scalar_t__ REDISMODULE_NO_EXPIRE ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 scalar_t__ mstime () ;
 int removeExpire (int ,int ) ;
 int setExpire (int ,int ,int ,scalar_t__) ;

int RM_SetExpire(RedisModuleKey *key, mstime_t expire) {
    if (!(key->mode & REDISMODULE_WRITE) || key->value == ((void*)0))
        return REDISMODULE_ERR;
    if (expire != REDISMODULE_NO_EXPIRE) {
        expire += mstime();
        setExpire(key->ctx->client,key->db,key->key,expire);
    } else {
        removeExpire(key->db,key->key);
    }
    return REDISMODULE_OK;
}
