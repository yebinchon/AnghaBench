
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sds ;


 int sdslen (scalar_t__) ;
 int serverAssert (int ) ;
 scalar_t__ ziplistCompare (unsigned char*,unsigned char*,int ) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 double zzlGetScore (unsigned char*) ;

unsigned char *zzlFind(unsigned char *zl, sds ele, double *score) {
    unsigned char *eptr = ziplistIndex(zl,0), *sptr;

    while (eptr != ((void*)0)) {
        sptr = ziplistNext(zl,eptr);
        serverAssert(sptr != ((void*)0));

        if (ziplistCompare(eptr,(unsigned char*)ele,sdslen(ele))) {

            if (score != ((void*)0)) *score = zzlGetScore(sptr);
            return eptr;
        }


        eptr = ziplistNext(zl,sptr);
    }
    return ((void*)0);
}
