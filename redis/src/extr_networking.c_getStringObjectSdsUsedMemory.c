
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int encoding; int ptr; } ;
typedef TYPE_1__ robj ;




 scalar_t__ OBJ_STRING ;
 size_t sdsZmallocSize (int ) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int zmalloc_size (TYPE_1__*) ;

size_t getStringObjectSdsUsedMemory(robj *o) {
    serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);
    switch(o->encoding) {
    case 128: return sdsZmallocSize(o->ptr);
    case 129: return zmalloc_size(o)-sizeof(robj);
    default: return 0;
    }
}
