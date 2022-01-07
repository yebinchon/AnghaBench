
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ robj ;


 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 int mixDigest (unsigned char*,int ,int ) ;
 int sdslen (int ) ;

void mixStringObjectDigest(unsigned char *digest, robj *o) {
    o = getDecodedObject(o);
    mixDigest(digest,o->ptr,sdslen(o->ptr));
    decrRefCount(o);
}
