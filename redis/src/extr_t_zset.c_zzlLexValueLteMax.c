
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlexrangespec ;
typedef int sds ;


 int sdsfree (int ) ;
 int ziplistGetObject (unsigned char*) ;
 int zslLexValueLteMax (int ,int *) ;

int zzlLexValueLteMax(unsigned char *p, zlexrangespec *spec) {
    sds value = ziplistGetObject(p);
    int res = zslLexValueLteMax(value,spec);
    sdsfree(value);
    return res;
}
