
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int FileAttributes; int ChangeTime; int LastWriteTime; int LastAccessTime; int CreationTime; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_14__ {int QuadPart; } ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_17__ {int FileAttributes; TYPE_4__ ChangeTime; TYPE_3__ LastWriteTime; TYPE_2__ LastAccessTime; TYPE_1__ CreationTime; } ;
struct TYPE_16__ {TYPE_7__ Entry; } ;
typedef int* PULONG ;
typedef TYPE_5__* PNTFS_FCB ;
typedef int PFILE_OBJECT ;
typedef TYPE_6__* PFILE_BASIC_INFORMATION ;
typedef TYPE_7__* PFILENAME_ATTRIBUTE ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int FILE_BASIC_INFORMATION ;


 int DPRINT (char*,int ,TYPE_5__*,int ,TYPE_6__*,int*) ;
 int NtfsFileFlagsToAttributes (int ,int *) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
NtfsGetBasicInformation(PFILE_OBJECT FileObject,
                        PNTFS_FCB Fcb,
                        PDEVICE_OBJECT DeviceObject,
                        PFILE_BASIC_INFORMATION BasicInfo,
                        PULONG BufferLength)
{
    PFILENAME_ATTRIBUTE FileName = &Fcb->Entry;

    DPRINT("NtfsGetBasicInformation(%p, %p, %p, %p, %p)\n", FileObject, Fcb, DeviceObject, BasicInfo, BufferLength);

    if (*BufferLength < sizeof(FILE_BASIC_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    BasicInfo->CreationTime.QuadPart = FileName->CreationTime;
    BasicInfo->LastAccessTime.QuadPart = FileName->LastAccessTime;
    BasicInfo->LastWriteTime.QuadPart = FileName->LastWriteTime;
    BasicInfo->ChangeTime.QuadPart = FileName->ChangeTime;

    NtfsFileFlagsToAttributes(FileName->FileAttributes, &BasicInfo->FileAttributes);

    *BufferLength -= sizeof(FILE_BASIC_INFORMATION);

    return STATUS_SUCCESS;
}
