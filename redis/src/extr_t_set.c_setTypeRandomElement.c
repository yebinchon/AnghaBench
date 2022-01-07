
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_3__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
typedef int int64_t ;
typedef int dictEntry ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 int * dictGetFairRandomKey (int ) ;
 int * dictGetKey (int *) ;
 int intsetRandom (int ) ;
 int serverPanic (char*) ;

int setTypeRandomElement(robj *setobj, sds *sdsele, int64_t *llele) {
    if (setobj->encoding == OBJ_ENCODING_HT) {
        dictEntry *de = dictGetFairRandomKey(setobj->ptr);
        *sdsele = dictGetKey(de);
        *llele = -123456789;
    } else if (setobj->encoding == OBJ_ENCODING_INTSET) {
        *llele = intsetRandom(setobj->ptr);
        *sdsele = ((void*)0);
    } else {
        serverPanic("Unknown set encoding");
    }
    return setobj->encoding;
}
