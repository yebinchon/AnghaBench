
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;


 long long LLONG_MAX ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 unsigned int UINT_MAX ;
 int * hashTypeGetFromHashTable (TYPE_1__*,int ) ;
 scalar_t__ hashTypeGetFromZiplist (TYPE_1__*,int ,unsigned char**,unsigned int*,long long*) ;
 int serverPanic (char*) ;

int hashTypeExists(robj *o, sds field) {
    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = ((void*)0);
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        if (hashTypeGetFromZiplist(o, field, &vstr, &vlen, &vll) == 0) return 1;
    } else if (o->encoding == OBJ_ENCODING_HT) {
        if (hashTypeGetFromHashTable(o, field) != ((void*)0)) return 1;
    } else {
        serverPanic("Unknown hash encoding");
    }
    return 0;
}
