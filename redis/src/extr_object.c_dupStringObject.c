
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int encoding; int ptr; } ;
typedef TYPE_1__ robj ;





 scalar_t__ OBJ_STRING ;
 TYPE_1__* createEmbeddedStringObject (int ,int ) ;
 TYPE_1__* createObject (scalar_t__,int *) ;
 TYPE_1__* createRawStringObject (int ,int ) ;
 int sdslen (int ) ;
 int serverAssert (int) ;
 int serverPanic (char*) ;

robj *dupStringObject(const robj *o) {
    robj *d;

    serverAssert(o->type == OBJ_STRING);

    switch(o->encoding) {
    case 128:
        return createRawStringObject(o->ptr,sdslen(o->ptr));
    case 130:
        return createEmbeddedStringObject(o->ptr,sdslen(o->ptr));
    case 129:
        d = createObject(OBJ_STRING, ((void*)0));
        d->encoding = 129;
        d->ptr = o->ptr;
        return d;
    default:
        serverPanic("Wrong encoding.");
        break;
    }
}
