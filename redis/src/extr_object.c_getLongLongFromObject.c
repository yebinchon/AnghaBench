
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_STRING ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int sdslen (scalar_t__) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int serverPanic (char*) ;
 scalar_t__ string2ll (scalar_t__,int ,long long*) ;

int getLongLongFromObject(robj *o, long long *target) {
    long long value;

    if (o == ((void*)0)) {
        value = 0;
    } else {
        serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);
        if (sdsEncodedObject(o)) {
            if (string2ll(o->ptr,sdslen(o->ptr),&value) == 0) return C_ERR;
        } else if (o->encoding == OBJ_ENCODING_INT) {
            value = (long)o->ptr;
        } else {
            serverPanic("Unknown string encoding");
        }
    }
    if (target) *target = value;
    return C_OK;
}
