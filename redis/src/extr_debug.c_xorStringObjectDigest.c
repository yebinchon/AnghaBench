
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ robj ;


 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 int sdslen (int ) ;
 int xorDigest (unsigned char*,int ,int ) ;

void xorStringObjectDigest(unsigned char *digest, robj *o) {
    o = getDecodedObject(o);
    xorDigest(digest,o->ptr,sdslen(o->ptr));
    decrRefCount(o);
}
