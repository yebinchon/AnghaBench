
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int robj ;
typedef int moduleType ;
struct TYPE_4__ {int mode; int * value; int key; int db; scalar_t__ iter; } ;
typedef TYPE_1__ RedisModuleKey ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int RM_DeleteKey (TYPE_1__*) ;
 int * createModuleObject (int *,void*) ;
 int decrRefCount (int *) ;
 int setKey (int ,int ,int *) ;

int RM_ModuleTypeSetValue(RedisModuleKey *key, moduleType *mt, void *value) {
    if (!(key->mode & REDISMODULE_WRITE) || key->iter) return REDISMODULE_ERR;
    RM_DeleteKey(key);
    robj *o = createModuleObject(mt,value);
    setKey(key->db,key->key,o);
    decrRefCount(o);
    key->value = o;
    return REDISMODULE_OK;
}
