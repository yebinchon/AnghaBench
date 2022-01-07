
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VOID ;
typedef int ULONG_PTR ;
struct TYPE_8__ {int DosVersion; } ;
struct TYPE_7__ {scalar_t__ CurrentPsp; } ;
struct TYPE_6__ {int* Exit; scalar_t__ LastParagraph; scalar_t__ ParentPsp; int* FarCall; int DosVersion; int HandleTablePtr; int HandleTableSize; int HandleTable; int EnvBlock; void* CriticalAddress; void* BreakAddress; void* TerminateAddress; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef void** LPDWORD ;


 scalar_t__ BaseAddress ;
 int DEFAULT_JFT_SIZE ;
 int DosCopyHandleTable (int ) ;
 TYPE_5__* DosData ;
 int MAKELONG (int,scalar_t__) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 TYPE_1__* SEGMENT_TO_PSP (scalar_t__) ;
 scalar_t__ SYSTEM_PSP ;
 TYPE_2__* Sda ;

VOID DosCreatePsp(WORD Segment, WORD ProgramSize)
{
    PDOS_PSP PspBlock = SEGMENT_TO_PSP(Segment);
    LPDWORD IntVecTable = (LPDWORD)((ULONG_PTR)BaseAddress);

    RtlZeroMemory(PspBlock, sizeof(*PspBlock));


    PspBlock->Exit[0] = 0xCD;
    PspBlock->Exit[1] = 0x20;


    PspBlock->LastParagraph = Segment + ProgramSize;


    PspBlock->TerminateAddress = IntVecTable[0x22];
    PspBlock->BreakAddress = IntVecTable[0x23];
    PspBlock->CriticalAddress = IntVecTable[0x24];


    PspBlock->ParentPsp = Sda->CurrentPsp;

    if (Sda->CurrentPsp != SYSTEM_PSP)
    {

        PspBlock->EnvBlock = SEGMENT_TO_PSP(Sda->CurrentPsp)->EnvBlock;
    }
    DosCopyHandleTable(PspBlock->HandleTable);


    PspBlock->HandleTableSize = DEFAULT_JFT_SIZE;
    PspBlock->HandleTablePtr = MAKELONG(0x18, Segment);



    PspBlock->DosVersion = DosData->DosVersion;


    PspBlock->FarCall[0] = 0xCD;
    PspBlock->FarCall[1] = 0x21;
    PspBlock->FarCall[2] = 0xCB;
}
