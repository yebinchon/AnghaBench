
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zsl; int dict; } ;
typedef TYPE_1__ zset ;
struct TYPE_6__ {int encoding; TYPE_1__* ptr; } ;
typedef TYPE_2__ robj ;




 int dictRelease (int ) ;
 int serverPanic (char*) ;
 int zfree (TYPE_1__*) ;
 int zslFree (int ) ;

void freeZsetObject(robj *o) {
    zset *zs;
    switch (o->encoding) {
    case 129:
        zs = o->ptr;
        dictRelease(zs->dict);
        zslFree(zs->zsl);
        zfree(zs);
        break;
    case 128:
        zfree(o->ptr);
        break;
    default:
        serverPanic("Unknown sorted set encoding");
    }
}
