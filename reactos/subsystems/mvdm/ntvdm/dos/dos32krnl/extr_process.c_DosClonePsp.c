
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
typedef int ULONG_PTR ;
struct TYPE_6__ {int HandleTableSize; int HandleTablePtr; scalar_t__ ParentPsp; void* CriticalAddress; void* BreakAddress; void* TerminateAddress; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef void** LPDWORD ;


 scalar_t__ BaseAddress ;
 int DEFAULT_JFT_SIZE ;
 TYPE_1__* FAR_POINTER (int ) ;
 int MAKELONG (int,int ) ;
 int RtlCopyMemory (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* SEGMENT_TO_PSP (int ) ;

VOID DosClonePsp(WORD DestSegment, WORD SourceSegment)
{
    PDOS_PSP DestPsp = SEGMENT_TO_PSP(DestSegment);
    PDOS_PSP SourcePsp = SEGMENT_TO_PSP(SourceSegment);
    LPDWORD IntVecTable = (LPDWORD)((ULONG_PTR)BaseAddress);


    RtlCopyMemory(DestPsp, SourcePsp, sizeof(*DestPsp));


    DestPsp->TerminateAddress = IntVecTable[0x22];
    DestPsp->BreakAddress = IntVecTable[0x23];
    DestPsp->CriticalAddress = IntVecTable[0x24];


    DestPsp->ParentPsp = 0;


    DestPsp->HandleTableSize = DEFAULT_JFT_SIZE;
    DestPsp->HandleTablePtr = MAKELONG(0x18, DestSegment);


    RtlCopyMemory(FAR_POINTER(DestPsp->HandleTablePtr),
                  FAR_POINTER(SourcePsp->HandleTablePtr),
                  DEFAULT_JFT_SIZE);
}
