
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int hashTypeIterator ;


 int hashTypeCurrentObject (int *,int,unsigned char**,unsigned int*,long long*) ;
 int sdsfromlonglong (long long) ;
 int sdsnewlen (unsigned char*,unsigned int) ;

sds hashTypeCurrentObjectNewSds(hashTypeIterator *hi, int what) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vll;

    hashTypeCurrentObject(hi,what,&vstr,&vlen,&vll);
    if (vstr) return sdsnewlen(vstr,vlen);
    return sdsfromlonglong(vll);
}
