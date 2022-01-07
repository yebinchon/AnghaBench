
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zrangespec ;


 unsigned char* ziplistDelete (unsigned char*,unsigned char**) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 scalar_t__ zslValueLteMax (double,int *) ;
 unsigned char* zzlFirstInRange (unsigned char*,int *) ;
 double zzlGetScore (unsigned char*) ;

unsigned char *zzlDeleteRangeByScore(unsigned char *zl, zrangespec *range, unsigned long *deleted) {
    unsigned char *eptr, *sptr;
    double score;
    unsigned long num = 0;

    if (deleted != ((void*)0)) *deleted = 0;

    eptr = zzlFirstInRange(zl,range);
    if (eptr == ((void*)0)) return zl;



    while ((sptr = ziplistNext(zl,eptr)) != ((void*)0)) {
        score = zzlGetScore(sptr);
        if (zslValueLteMax(score,range)) {

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
