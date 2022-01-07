
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* sds ;
struct TYPE_13__ {scalar_t__ type; int refcount; scalar_t__ encoding; void* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_15__ {scalar_t__ maxmemory; int maxmemory_policy; } ;
struct TYPE_14__ {TYPE_1__** integers; } ;


 int MAXMEMORY_FLAG_NO_SHARED_INTEGERS ;
 scalar_t__ OBJ_ENCODING_EMBSTR ;
 size_t OBJ_ENCODING_EMBSTR_SIZE_LIMIT ;
 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_ENCODING_RAW ;
 long OBJ_SHARED_INTEGERS ;
 scalar_t__ OBJ_STRING ;
 TYPE_1__* createEmbeddedStringObject (void*,size_t) ;
 TYPE_1__* createStringObjectFromLongLongForValue (long) ;
 int decrRefCount (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int sdsEncodedObject (TYPE_1__*) ;
 int sdsfree (void*) ;
 size_t sdslen (void*) ;
 TYPE_7__ server ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 TYPE_5__ shared ;
 scalar_t__ string2l (void*,size_t,long*) ;
 int trimStringObjectIfNeeded (TYPE_1__*) ;

robj *tryObjectEncoding(robj *o) {
    long value;
    sds s = o->ptr;
    size_t len;





    serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);




    if (!sdsEncodedObject(o)) return o;




     if (o->refcount > 1) return o;




    len = sdslen(s);
    if (len <= 20 && string2l(s,len,&value)) {




        if ((server.maxmemory == 0 ||
            !(server.maxmemory_policy & MAXMEMORY_FLAG_NO_SHARED_INTEGERS)) &&
            value >= 0 &&
            value < OBJ_SHARED_INTEGERS)
        {
            decrRefCount(o);
            incrRefCount(shared.integers[value]);
            return shared.integers[value];
        } else {
            if (o->encoding == OBJ_ENCODING_RAW) {
                sdsfree(o->ptr);
                o->encoding = OBJ_ENCODING_INT;
                o->ptr = (void*) value;
                return o;
            } else if (o->encoding == OBJ_ENCODING_EMBSTR) {
                decrRefCount(o);
                return createStringObjectFromLongLongForValue(value);
            }
        }
    }





    if (len <= OBJ_ENCODING_EMBSTR_SIZE_LIMIT) {
        robj *emb;

        if (o->encoding == OBJ_ENCODING_EMBSTR) return o;
        emb = createEmbeddedStringObject(s,sdslen(s));
        decrRefCount(o);
        return emb;
    }
    trimStringObjectIfNeeded(o);


    return o;
}
