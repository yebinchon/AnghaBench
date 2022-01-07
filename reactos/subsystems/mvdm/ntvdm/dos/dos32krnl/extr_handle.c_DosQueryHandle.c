
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_5__ {scalar_t__ CurrentPsp; } ;
struct TYPE_4__ {int HandleTablePtr; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef int* LPBYTE ;
typedef int BYTE ;


 int DPRINT (char*,size_t) ;
 scalar_t__ FAR_POINTER (int ) ;
 TYPE_1__* SEGMENT_TO_PSP (scalar_t__) ;
 scalar_t__ SYSTEM_PSP ;
 TYPE_2__* Sda ;

BYTE DosQueryHandle(WORD DosHandle)
{
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;

    DPRINT("DosQueryHandle: DosHandle 0x%04X\n", DosHandle);


    if (Sda->CurrentPsp == SYSTEM_PSP) return 0xFF;


    PspBlock = SEGMENT_TO_PSP(Sda->CurrentPsp);
    HandleTable = (LPBYTE)FAR_POINTER(PspBlock->HandleTablePtr);


    return HandleTable[DosHandle];
}
