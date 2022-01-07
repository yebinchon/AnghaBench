
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {int FileAttributes; int ChangeTime; int LastWriteTime; int LastAccessTime; int CreationTime; } ;
struct TYPE_16__ {int QuadPart; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_14__ {int QuadPart; } ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_19__ {int FileAttributes; int AllocationSize; int EndOfFile; TYPE_4__ ChangeTime; TYPE_3__ LastWriteTime; TYPE_2__ LastAccessTime; TYPE_1__ CreationTime; } ;
struct TYPE_17__ {int AllocationSize; int FileSize; } ;
struct TYPE_18__ {TYPE_5__ RFCB; TYPE_8__ Entry; } ;
typedef int* PULONG ;
typedef TYPE_6__* PNTFS_FCB ;
typedef TYPE_7__* PFILE_NETWORK_OPEN_INFORMATION ;
typedef TYPE_8__* PFILENAME_ATTRIBUTE ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_NETWORK_OPEN_INFORMATION ;


 int DPRINT (char*,TYPE_6__*,int ,TYPE_7__*,int*) ;
 int NtfsFileFlagsToAttributes (int ,int *) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
NtfsGetNetworkOpenInformation(PNTFS_FCB Fcb,
                              PDEVICE_EXTENSION DeviceExt,
                              PFILE_NETWORK_OPEN_INFORMATION NetworkInfo,
                              PULONG BufferLength)
{
    PFILENAME_ATTRIBUTE FileName = &Fcb->Entry;

    DPRINT("NtfsGetNetworkOpenInformation(%p, %p, %p, %p)\n", Fcb, DeviceExt, NetworkInfo, BufferLength);

    if (*BufferLength < sizeof(FILE_NETWORK_OPEN_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    NetworkInfo->CreationTime.QuadPart = FileName->CreationTime;
    NetworkInfo->LastAccessTime.QuadPart = FileName->LastAccessTime;
    NetworkInfo->LastWriteTime.QuadPart = FileName->LastWriteTime;
    NetworkInfo->ChangeTime.QuadPart = FileName->ChangeTime;

    NetworkInfo->EndOfFile = Fcb->RFCB.FileSize;
    NetworkInfo->AllocationSize = Fcb->RFCB.AllocationSize;

    NtfsFileFlagsToAttributes(FileName->FileAttributes, &NetworkInfo->FileAttributes);

    *BufferLength -= sizeof(FILE_NETWORK_OPEN_INFORMATION);
    return STATUS_SUCCESS;
}
