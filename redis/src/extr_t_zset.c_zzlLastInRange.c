
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zrangespec ;


 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 unsigned char* ziplistPrev (unsigned char*,unsigned char*) ;
 scalar_t__ zslValueGteMin (double,int *) ;
 scalar_t__ zslValueLteMax (double,int *) ;
 double zzlGetScore (unsigned char*) ;
 int zzlIsInRange (unsigned char*,int *) ;

unsigned char *zzlLastInRange(unsigned char *zl, zrangespec *range) {
    unsigned char *eptr = ziplistIndex(zl,-2), *sptr;
    double score;


    if (!zzlIsInRange(zl,range)) return ((void*)0);

    while (eptr != ((void*)0)) {
        sptr = ziplistNext(zl,eptr);
        serverAssert(sptr != ((void*)0));

        score = zzlGetScore(sptr);
        if (zslValueLteMax(score,range)) {

            if (zslValueGteMin(score,range))
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
