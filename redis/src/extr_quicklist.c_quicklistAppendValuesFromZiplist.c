
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicklist ;
typedef int longstr ;


 unsigned int ll2string (char*,int,long long) ;
 int quicklistPushTail (int *,unsigned char*,unsigned int) ;
 int zfree (unsigned char*) ;
 scalar_t__ ziplistGet (unsigned char*,unsigned char**,unsigned int*,long long*) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;

quicklist *quicklistAppendValuesFromZiplist(quicklist *quicklist,
                                            unsigned char *zl) {
    unsigned char *value;
    unsigned int sz;
    long long longval;
    char longstr[32] = {0};

    unsigned char *p = ziplistIndex(zl, 0);
    while (ziplistGet(p, &value, &sz, &longval)) {
        if (!value) {

            sz = ll2string(longstr, sizeof(longstr), longval);
            value = (unsigned char *)longstr;
        }
        quicklistPushTail(quicklist, value, sz);
        p = ziplistNext(zl, p);
    }
    zfree(zl);
    return quicklist;
}
