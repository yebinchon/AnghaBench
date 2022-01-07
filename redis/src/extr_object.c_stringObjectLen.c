
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_STRING ;
 size_t sdigits10 (long) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 size_t sdslen (scalar_t__) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;

size_t stringObjectLen(robj *o) {
    serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);
    if (sdsEncodedObject(o)) {
        return sdslen(o->ptr);
    } else {
        return sdigits10((long)o->ptr);
    }
}
