
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int robj ;


 scalar_t__ C_ERR ;
 int * createStringObject (char*,unsigned int) ;
 int * createStringObjectFromLongLong (long long) ;
 scalar_t__ hashTypeGetValue (int *,int ,unsigned char**,unsigned int*,long long*) ;

robj *hashTypeGetValueObject(robj *o, sds field) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vll;

    if (hashTypeGetValue(o,field,&vstr,&vlen,&vll) == C_ERR) return ((void*)0);
    if (vstr) return createStringObject((char*)vstr,vlen);
    else return createStringObjectFromLongLong(vll);
}
