
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_10__ {int mode; TYPE_1__* value; int key; int db; } ;
typedef TYPE_2__ RedisModuleKey ;


 scalar_t__ OBJ_STRING ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 TYPE_1__* createObject (scalar_t__,int ) ;
 TYPE_1__* dbUnshareStringValue (int ,int ,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 int sdsRemoveFreeSpace (int ) ;
 size_t sdsavail (int ) ;
 int sdsgrowzero (int ,size_t) ;
 size_t sdslen (int ) ;
 int sdsnewlen (int *,size_t) ;
 int sdsrange (int ,int ,size_t) ;
 int setKey (int ,int ,TYPE_1__*) ;

int RM_StringTruncate(RedisModuleKey *key, size_t newlen) {
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value && key->value->type != OBJ_STRING) return REDISMODULE_ERR;
    if (newlen > 512*1024*1024) return REDISMODULE_ERR;



    if (key->value == ((void*)0) && newlen == 0) return REDISMODULE_OK;

    if (key->value == ((void*)0)) {

        robj *o = createObject(OBJ_STRING,sdsnewlen(((void*)0), newlen));
        setKey(key->db,key->key,o);
        key->value = o;
        decrRefCount(o);
    } else {

        key->value = dbUnshareStringValue(key->db, key->key, key->value);
        size_t curlen = sdslen(key->value->ptr);
        if (newlen > curlen) {
            key->value->ptr = sdsgrowzero(key->value->ptr,newlen);
        } else if (newlen < curlen) {
            sdsrange(key->value->ptr,0,newlen-1);

            if (sdslen(key->value->ptr) < sdsavail(key->value->ptr))
                key->value->ptr = sdsRemoveFreeSpace(key->value->ptr);
        }
    }
    return REDISMODULE_OK;
}
