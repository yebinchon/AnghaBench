
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; int refcount; scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
typedef int redisDb ;


 scalar_t__ OBJ_ENCODING_RAW ;
 scalar_t__ OBJ_STRING ;
 TYPE_1__* createRawStringObject (int ,int ) ;
 int dbOverwrite (int *,TYPE_1__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 int sdslen (int ) ;
 int serverAssert (int) ;

robj *dbUnshareStringValue(redisDb *db, robj *key, robj *o) {
    serverAssert(o->type == OBJ_STRING);
    if (o->refcount != 1 || o->encoding != OBJ_ENCODING_RAW) {
        robj *decoded = getDecodedObject(o);
        o = createRawStringObject(decoded->ptr, sdslen(decoded->ptr));
        decrRefCount(decoded);
        dbOverwrite(db,key,o);
    }
    return o;
}
