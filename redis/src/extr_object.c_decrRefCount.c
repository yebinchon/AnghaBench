
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int refcount; int type; } ;
typedef TYPE_1__ robj ;






 int OBJ_SHARED_REFCOUNT ;



 int freeHashObject (TYPE_1__*) ;
 int freeListObject (TYPE_1__*) ;
 int freeModuleObject (TYPE_1__*) ;
 int freeSetObject (TYPE_1__*) ;
 int freeStreamObject (TYPE_1__*) ;
 int freeStringObject (TYPE_1__*) ;
 int freeZsetObject (TYPE_1__*) ;
 int serverPanic (char*) ;
 int zfree (TYPE_1__*) ;

void decrRefCount(robj *o) {
    if (o->refcount == 1) {
        switch(o->type) {
        case 129: freeStringObject(o); break;
        case 133: freeListObject(o); break;
        case 131: freeSetObject(o); break;
        case 128: freeZsetObject(o); break;
        case 134: freeHashObject(o); break;
        case 132: freeModuleObject(o); break;
        case 130: freeStreamObject(o); break;
        default: serverPanic("Unknown object type"); break;
        }
        zfree(o);
    } else {
        if (o->refcount <= 0) serverPanic("decrRefCount against refcount <= 0");
        if (o->refcount != OBJ_SHARED_REFCOUNT) o->refcount--;
    }
}
