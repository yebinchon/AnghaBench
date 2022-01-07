
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_2__ {scalar_t__ Address; } ;
typedef size_t* PULONG ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GspSwBreakpointCount ;
 TYPE_1__* GspSwBreakpoints ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
GspFindSwBreakpoint(ULONG_PTR Address, PULONG PIndex)
{
    ULONG Index;

    for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
        if (GspSwBreakpoints[Index].Address == Address)
        {
            if (PIndex)
                *PIndex = Index;
            return TRUE;
        }
    }

    return FALSE;
}
