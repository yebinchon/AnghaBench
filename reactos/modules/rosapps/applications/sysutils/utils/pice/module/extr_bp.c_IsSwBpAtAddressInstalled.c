
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {size_t ulAddress; scalar_t__ bUsed; scalar_t__ bVirtual; scalar_t__ bInstalled; } ;
typedef scalar_t__ BOOLEAN ;


 size_t DIM (TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__* aSwBreakpoints ;

BOOLEAN IsSwBpAtAddressInstalled(ULONG ulAddress)
{
    ULONG i;

    for(i=0;i<DIM(aSwBreakpoints);i++)
    {
        if(aSwBreakpoints[i].ulAddress == ulAddress &&
     aSwBreakpoints[i].bUsed == TRUE &&
     aSwBreakpoints[i].bInstalled &&
           aSwBreakpoints[i].bVirtual == FALSE)
            return TRUE;
    }

 return FALSE;
}
