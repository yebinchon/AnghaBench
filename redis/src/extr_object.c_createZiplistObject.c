
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int encoding; } ;
typedef TYPE_1__ robj ;


 int OBJ_ENCODING_ZIPLIST ;
 int OBJ_LIST ;
 TYPE_1__* createObject (int ,unsigned char*) ;
 unsigned char* ziplistNew () ;

robj *createZiplistObject(void) {
    unsigned char *zl = ziplistNew();
    robj *o = createObject(OBJ_LIST,zl);
    o->encoding = OBJ_ENCODING_ZIPLIST;
    return o;
}
