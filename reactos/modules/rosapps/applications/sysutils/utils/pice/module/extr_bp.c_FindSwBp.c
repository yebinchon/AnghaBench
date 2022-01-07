
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_5__ {size_t ulAddress; scalar_t__ bUsed; scalar_t__ bVirtual; } ;
typedef TYPE_1__* PSW_BP ;


 size_t DIM (TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__* aSwBreakpoints ;

PSW_BP FindSwBp(ULONG ulAddress)
{
    ULONG i;

    for(i=0;i<DIM(aSwBreakpoints);i++)
    {
        if(aSwBreakpoints[i].ulAddress == ulAddress && aSwBreakpoints[i].bUsed==TRUE && aSwBreakpoints[i].bVirtual==FALSE)
            return &aSwBreakpoints[i];
    }

    return ((void*)0);
}
