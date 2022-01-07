
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sds ;
struct TYPE_6__ {unsigned char* ptr; scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_ENCODING_INT ;
 int decrRefCount (TYPE_1__*) ;
 int dictGenHashFunction (unsigned char*,int) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 int ll2string (char*,int,long) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int sdslen (int ) ;

uint64_t dictEncObjHash(const void *key) {
    robj *o = (robj*) key;

    if (sdsEncodedObject(o)) {
        return dictGenHashFunction(o->ptr, sdslen((sds)o->ptr));
    } else {
        if (o->encoding == OBJ_ENCODING_INT) {
            char buf[32];
            int len;

            len = ll2string(buf,32,(long)o->ptr);
            return dictGenHashFunction((unsigned char*)buf, len);
        } else {
            uint64_t hash;

            o = getDecodedObject(o);
            hash = dictGenHashFunction(o->ptr, sdslen((sds)o->ptr));
            decrRefCount(o);
            return hash;
        }
    }
}
