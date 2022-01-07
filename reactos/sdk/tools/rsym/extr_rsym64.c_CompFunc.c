
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ FunctionStart; } ;
typedef TYPE_1__* PRUNTIME_FUNCTION ;



int CompFunc(const void *p1, const void *p2)
{
    PRUNTIME_FUNCTION prf1 = (void*)p1, prf2 = (void*)p2;
    return (prf1->FunctionStart > prf2->FunctionStart ? 1 : -1);
}
