
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int rio ;


 scalar_t__ OBJ_ENCODING_INT ;
 int rioWriteBulkLongLong (int *,long) ;
 int rioWriteBulkString (int *,scalar_t__,int ) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int sdslen (scalar_t__) ;
 int serverPanic (char*) ;

int rioWriteBulkObject(rio *r, robj *obj) {


    if (obj->encoding == OBJ_ENCODING_INT) {
        return rioWriteBulkLongLong(r,(long)obj->ptr);
    } else if (sdsEncodedObject(obj)) {
        return rioWriteBulkString(r,obj->ptr,sdslen(obj->ptr));
    } else {
        serverPanic("Unknown string encoding");
    }
}
