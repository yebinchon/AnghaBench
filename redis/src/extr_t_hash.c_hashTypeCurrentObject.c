
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef TYPE_1__ hashTypeIterator ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ hashTypeCurrentFromHashTable (TYPE_1__*,int) ;
 int hashTypeCurrentFromZiplist (TYPE_1__*,int,unsigned char**,unsigned int*,long long*) ;
 unsigned int sdslen (scalar_t__) ;
 int serverPanic (char*) ;

void hashTypeCurrentObject(hashTypeIterator *hi, int what, unsigned char **vstr, unsigned int *vlen, long long *vll) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        *vstr = ((void*)0);
        hashTypeCurrentFromZiplist(hi, what, vstr, vlen, vll);
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        sds ele = hashTypeCurrentFromHashTable(hi, what);
        *vstr = (unsigned char*) ele;
        *vlen = sdslen(ele);
    } else {
        serverPanic("Unknown hash encoding");
    }
}
