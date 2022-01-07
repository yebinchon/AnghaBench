
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int dict ;




 int dictRelease (int *) ;
 int serverPanic (char*) ;
 int zfree (scalar_t__) ;

void freeHashObject(robj *o) {
    switch (o->encoding) {
    case 129:
        dictRelease((dict*) o->ptr);
        break;
    case 128:
        zfree(o->ptr);
        break;
    default:
        serverPanic("Unknown hash encoding type");
        break;
    }
}
