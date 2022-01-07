
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_10__ {int LastErrorCode; } ;
struct TYPE_9__ {int (* FlushOutputRoutine ) (TYPE_2__*) ;int (* FlushInputRoutine ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int DeviceInfo; int Win32Handle; int DevicePointer; } ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_2__* PDOS_DEVICE_NODE ;
typedef int BOOL ;


 TYPE_2__* DosGetDriverNode (int ) ;
 TYPE_1__* DosGetHandleFileDescriptor (int ) ;
 int ERROR_INVALID_HANDLE ;
 int FALSE ;
 int FILE_INFO_DEVICE ;
 int FlushFileBuffers (int ) ;
 TYPE_5__* Sda ;
 int TRUE ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

BOOL DosFlushFileBuffers(WORD FileHandle)
{
    PDOS_FILE_DESCRIPTOR Descriptor = DosGetHandleFileDescriptor(FileHandle);

    if (Descriptor == ((void*)0))
    {

        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return FALSE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        PDOS_DEVICE_NODE Node = DosGetDriverNode(Descriptor->DevicePointer);

        if (Node->FlushInputRoutine) Node->FlushInputRoutine(Node);
        if (Node->FlushOutputRoutine) Node->FlushOutputRoutine(Node);

        return TRUE;
    }
    else
    {
        return FlushFileBuffers(Descriptor->Win32Handle);
    }
}
