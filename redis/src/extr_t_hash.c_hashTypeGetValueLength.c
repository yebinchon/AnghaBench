
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;


 long long LLONG_MAX ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 unsigned int UINT_MAX ;
 int * hashTypeGetFromHashTable (TYPE_1__*,int *) ;
 scalar_t__ hashTypeGetFromZiplist (TYPE_1__*,int *,unsigned char**,unsigned int*,long long*) ;
 unsigned int sdigits10 (long long) ;
 size_t sdslen (int *) ;
 int serverPanic (char*) ;

size_t hashTypeGetValueLength(robj *o, sds field) {
    size_t len = 0;
    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = ((void*)0);
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        if (hashTypeGetFromZiplist(o, field, &vstr, &vlen, &vll) == 0)
            len = vstr ? vlen : sdigits10(vll);
    } else if (o->encoding == OBJ_ENCODING_HT) {
        sds aux;

        if ((aux = hashTypeGetFromHashTable(o, field)) != ((void*)0))
            len = sdslen(aux);
    } else {
        serverPanic("Unknown hash encoding");
    }
    return len;
}
