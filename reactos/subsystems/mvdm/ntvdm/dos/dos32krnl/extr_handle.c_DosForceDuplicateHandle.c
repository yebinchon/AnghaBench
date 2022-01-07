
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_8__ {scalar_t__ CurrentPsp; } ;
struct TYPE_7__ {int RefCount; } ;
struct TYPE_6__ {int HandleTablePtr; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef TYPE_2__* PDOS_FILE_DESCRIPTOR ;
typedef int* LPBYTE ;
typedef int BYTE ;
typedef int BOOLEAN ;


 int DPRINT (char*,size_t,size_t) ;
 int DosCloseHandle (size_t) ;
 TYPE_2__* DosGetFileDescriptor (int) ;
 int FALSE ;
 scalar_t__ FAR_POINTER (int ) ;
 TYPE_1__* SEGMENT_TO_PSP (scalar_t__) ;
 scalar_t__ SYSTEM_PSP ;
 TYPE_3__* Sda ;
 int TRUE ;

BOOLEAN DosForceDuplicateHandle(WORD OldHandle, WORD NewHandle)
{
    BYTE DescriptorId;
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;
    PDOS_FILE_DESCRIPTOR Descriptor;

    DPRINT("DosForceDuplicateHandle: OldHandle 0x%04X, NewHandle 0x%04X\n",
           OldHandle,
           NewHandle);


    if (Sda->CurrentPsp == SYSTEM_PSP) return FALSE;


    PspBlock = SEGMENT_TO_PSP(Sda->CurrentPsp);
    HandleTable = (LPBYTE)FAR_POINTER(PspBlock->HandleTablePtr);


    if (HandleTable[OldHandle] == 0xFF) return FALSE;


    if (HandleTable[NewHandle] != 0xFF)
    {

        DosCloseHandle(NewHandle);
    }

    DescriptorId = HandleTable[OldHandle];
    Descriptor = DosGetFileDescriptor(DescriptorId);
    if (Descriptor == ((void*)0)) return FALSE;


    Descriptor->RefCount++;


    HandleTable[NewHandle] = DescriptorId;


    return TRUE;
}
