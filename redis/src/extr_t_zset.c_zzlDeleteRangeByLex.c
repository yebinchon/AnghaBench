
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlexrangespec ;


 unsigned char* ziplistDelete (unsigned char*,unsigned char**) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 unsigned char* zzlFirstInLexRange (unsigned char*,int *) ;
 scalar_t__ zzlLexValueLteMax (unsigned char*,int *) ;

unsigned char *zzlDeleteRangeByLex(unsigned char *zl, zlexrangespec *range, unsigned long *deleted) {
    unsigned char *eptr, *sptr;
    unsigned long num = 0;

    if (deleted != ((void*)0)) *deleted = 0;

    eptr = zzlFirstInLexRange(zl,range);
    if (eptr == ((void*)0)) return zl;



    while ((sptr = ziplistNext(zl,eptr)) != ((void*)0)) {
        if (zzlLexValueLteMax(eptr,range)) {

            zl = ziplistDelete(zl,&eptr);
            zl = ziplistDelete(zl,&eptr);
            num++;
        } else {

            break;
        }
    }

    if (deleted != ((void*)0)) *deleted = num;
    return zl;
}
