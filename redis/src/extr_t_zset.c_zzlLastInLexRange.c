
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlexrangespec ;


 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int) ;
 unsigned char* ziplistPrev (unsigned char*,unsigned char*) ;
 int zzlIsInLexRange (unsigned char*,int *) ;
 scalar_t__ zzlLexValueGteMin (unsigned char*,int *) ;
 scalar_t__ zzlLexValueLteMax (unsigned char*,int *) ;

unsigned char *zzlLastInLexRange(unsigned char *zl, zlexrangespec *range) {
    unsigned char *eptr = ziplistIndex(zl,-2), *sptr;


    if (!zzlIsInLexRange(zl,range)) return ((void*)0);

    while (eptr != ((void*)0)) {
        if (zzlLexValueLteMax(eptr,range)) {

            if (zzlLexValueGteMin(eptr,range))
                return eptr;
            return ((void*)0);
        }



        sptr = ziplistPrev(zl,eptr);
        if (sptr != ((void*)0))
            serverAssert((eptr = ziplistPrev(zl,sptr)) != ((void*)0));
        else
            eptr = ((void*)0);
    }

    return ((void*)0);
}
