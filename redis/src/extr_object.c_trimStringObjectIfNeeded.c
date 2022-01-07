
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_ENCODING_RAW ;
 int sdsRemoveFreeSpace (int ) ;
 int sdsavail (int ) ;
 int sdslen (int ) ;

void trimStringObjectIfNeeded(robj *o) {
    if (o->encoding == OBJ_ENCODING_RAW &&
        sdsavail(o->ptr) > sdslen(o->ptr)/10)
    {
        o->ptr = sdsRemoveFreeSpace(o->ptr);
    }
}
