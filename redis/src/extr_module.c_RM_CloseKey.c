
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; int ctx; int key; int db; } ;
typedef TYPE_1__ RedisModuleKey ;


 int REDISMODULE_AM_KEY ;
 int REDISMODULE_WRITE ;
 int RM_ZsetRangeStop (TYPE_1__*) ;
 int SHOULD_SIGNAL_MODIFIED_KEYS (int ) ;
 int autoMemoryFreed (int ,int ,TYPE_1__*) ;
 int decrRefCount (int ) ;
 int signalModifiedKey (int ,int ) ;
 int zfree (TYPE_1__*) ;

void RM_CloseKey(RedisModuleKey *key) {
    if (key == ((void*)0)) return;
    int signal = SHOULD_SIGNAL_MODIFIED_KEYS(key->ctx);
    if ((key->mode & REDISMODULE_WRITE) && signal)
        signalModifiedKey(key->db,key->key);

    RM_ZsetRangeStop(key);
    decrRefCount(key->key);
    autoMemoryFreed(key->ctx,REDISMODULE_AM_KEY,key);
    zfree(key);
}
