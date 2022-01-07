
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ min; scalar_t__ max; scalar_t__ maxex; scalar_t__ minex; } ;
typedef TYPE_1__ zrangespec ;


 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int) ;
 int zslValueGteMin (double,TYPE_1__*) ;
 int zslValueLteMax (double,TYPE_1__*) ;
 double zzlGetScore (unsigned char*) ;

int zzlIsInRange(unsigned char *zl, zrangespec *range) {
    unsigned char *p;
    double score;


    if (range->min > range->max ||
            (range->min == range->max && (range->minex || range->maxex)))
        return 0;

    p = ziplistIndex(zl,-1);
    if (p == ((void*)0)) return 0;
    score = zzlGetScore(p);
    if (!zslValueGteMin(score,range))
        return 0;

    p = ziplistIndex(zl,1);
    serverAssert(p != ((void*)0));
    score = zzlGetScore(p);
    if (!zslValueLteMax(score,range))
        return 0;

    return 1;
}
