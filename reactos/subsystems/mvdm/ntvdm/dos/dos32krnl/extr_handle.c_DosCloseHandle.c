
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_12__ {scalar_t__ CurrentPsp; } ;
struct TYPE_11__ {int (* CloseRoutine ) (TYPE_3__*) ;} ;
struct TYPE_10__ {int DeviceInfo; int Win32Handle; int DevicePointer; int RefCount; } ;
struct TYPE_9__ {int HandleTablePtr; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef TYPE_2__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_3__* PDOS_DEVICE_NODE ;
typedef int* LPBYTE ;
typedef int BOOLEAN ;


 int CloseHandle (int ) ;
 int DPRINT (char*,size_t) ;
 TYPE_3__* DosGetDriverNode (int ) ;
 TYPE_2__* DosGetFileDescriptor (int) ;
 int FALSE ;
 scalar_t__ FAR_POINTER (int ) ;
 int FILE_INFO_DEVICE ;
 TYPE_1__* SEGMENT_TO_PSP (scalar_t__) ;
 scalar_t__ SYSTEM_PSP ;
 TYPE_5__* Sda ;
 int TRUE ;
 int stub1 (TYPE_3__*) ;

BOOLEAN DosCloseHandle(WORD DosHandle)
{
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;
    PDOS_FILE_DESCRIPTOR Descriptor;

    DPRINT("DosCloseHandle: DosHandle 0x%04X\n", DosHandle);


    if (Sda->CurrentPsp == SYSTEM_PSP) return FALSE;


    PspBlock = SEGMENT_TO_PSP(Sda->CurrentPsp);
    HandleTable = (LPBYTE)FAR_POINTER(PspBlock->HandleTablePtr);


    if (HandleTable[DosHandle] == 0xFF) return FALSE;


    Descriptor = DosGetFileDescriptor(HandleTable[DosHandle]);
    if (Descriptor == ((void*)0)) return FALSE;


    Descriptor->RefCount--;


    if (!Descriptor->RefCount)
    {
        if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
        {
            PDOS_DEVICE_NODE Node = DosGetDriverNode(Descriptor->DevicePointer);


            if (Node->CloseRoutine) Node->CloseRoutine(Node);
        }
        else
        {

            CloseHandle(Descriptor->Win32Handle);
        }
    }


    HandleTable[DosHandle] = 0xFF;

    return TRUE;
}
