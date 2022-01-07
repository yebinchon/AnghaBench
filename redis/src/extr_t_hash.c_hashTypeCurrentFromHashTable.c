
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {scalar_t__ encoding; int de; } ;
typedef TYPE_1__ hashTypeIterator ;


 scalar_t__ OBJ_ENCODING_HT ;
 int OBJ_HASH_KEY ;
 int dictGetKey (int ) ;
 int dictGetVal (int ) ;
 int serverAssert (int) ;

sds hashTypeCurrentFromHashTable(hashTypeIterator *hi, int what) {
    serverAssert(hi->encoding == OBJ_ENCODING_HT);

    if (what & OBJ_HASH_KEY) {
        return dictGetKey(hi->de);
    } else {
        return dictGetVal(hi->de);
    }
}
