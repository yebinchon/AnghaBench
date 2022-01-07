
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ maxex; scalar_t__ minex; int max; int min; } ;
typedef TYPE_1__ zlexrangespec ;


 int sdscmplex (int ,int ) ;
 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int) ;
 int zzlLexValueGteMin (unsigned char*,TYPE_1__*) ;
 int zzlLexValueLteMax (unsigned char*,TYPE_1__*) ;

int zzlIsInLexRange(unsigned char *zl, zlexrangespec *range) {
    unsigned char *p;


    int cmp = sdscmplex(range->min,range->max);
    if (cmp > 0 || (cmp == 0 && (range->minex || range->maxex)))
        return 0;

    p = ziplistIndex(zl,-2);
    if (p == ((void*)0)) return 0;
    if (!zzlLexValueGteMin(p,range))
        return 0;

    p = ziplistIndex(zl,0);
    serverAssert(p != ((void*)0));
    if (!zzlLexValueLteMax(p,range))
        return 0;

    return 1;
}
