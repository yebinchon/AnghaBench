
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_2__ {int Active; scalar_t__ Address; int PrevContent; } ;
typedef int PCHAR ;


 int DPRINT (char*,scalar_t__) ;
 int DPRINT1 (char*,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ GspMemoryError ;
 int GspReadMemSafe (int ) ;
 TYPE_1__* GspSwBreakpoints ;
 int GspWriteMemSafe (int ,int ) ;
 int I386_OPCODE_INT3 ;

__attribute__((used)) static void
GspLoadSwBreakpoint(ULONG Index)
{
    GspMemoryError = FALSE;

    GspSwBreakpoints[Index].PrevContent = GspReadMemSafe((PCHAR)GspSwBreakpoints[Index].Address);

    if (!GspMemoryError)
        GspWriteMemSafe((PCHAR)GspSwBreakpoints[Index].Address, I386_OPCODE_INT3);

    GspSwBreakpoints[Index].Active = !GspMemoryError;

    if (GspMemoryError)
        DPRINT1("Failed to set software breakpoint at 0x%p\n", GspSwBreakpoints[Index].Address);
    else
        DPRINT("Successfully set software breakpoint at 0x%p\n", GspSwBreakpoints[Index].Address);
}
