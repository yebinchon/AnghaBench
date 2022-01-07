
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlexrangespec ;


 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 int zzlIsInLexRange (unsigned char*,int *) ;
 scalar_t__ zzlLexValueGteMin (unsigned char*,int *) ;
 scalar_t__ zzlLexValueLteMax (unsigned char*,int *) ;

unsigned char *zzlFirstInLexRange(unsigned char *zl, zlexrangespec *range) {
    unsigned char *eptr = ziplistIndex(zl,0), *sptr;


    if (!zzlIsInLexRange(zl,range)) return ((void*)0);

    while (eptr != ((void*)0)) {
        if (zzlLexValueGteMin(eptr,range)) {

            if (zzlLexValueLteMax(eptr,range))
                return eptr;
            return ((void*)0);
        }


        sptr = ziplistNext(zl,eptr);
        serverAssert(sptr != ((void*)0));
        eptr = ziplistNext(zl,sptr);
    }

    return ((void*)0);
}
