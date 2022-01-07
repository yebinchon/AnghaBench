
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_3__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
typedef int dictEntry ;


 scalar_t__ OBJ_ENCODING_HT ;
 int * dictFind (int ,int *) ;
 int * dictGetVal (int *) ;
 int serverAssert (int) ;

sds hashTypeGetFromHashTable(robj *o, sds field) {
    dictEntry *de;

    serverAssert(o->encoding == OBJ_ENCODING_HT);

    de = dictFind(o->ptr, field);
    if (de == ((void*)0)) return ((void*)0);
    return dictGetVal(de);
}
