
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int Directory; int DeletePending; int NumberOfLinks; int EndOfFile; int AllocationSize; } ;
struct TYPE_10__ {int FileSize; int AllocationSize; } ;
struct TYPE_11__ {int LinkCount; TYPE_1__ RFCB; } ;
typedef int* PULONG ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_3__* PFILE_STANDARD_INFORMATION ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int FILE_STANDARD_INFORMATION ;


 int ASSERT (int ) ;
 int DPRINT (char*,TYPE_2__*,int ,TYPE_3__*,int*) ;
 int FALSE ;
 int NtfsFCBIsDirectory (TYPE_2__*) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static
NTSTATUS
NtfsGetStandardInformation(PNTFS_FCB Fcb,
                           PDEVICE_OBJECT DeviceObject,
                           PFILE_STANDARD_INFORMATION StandardInfo,
                           PULONG BufferLength)
{
    UNREFERENCED_PARAMETER(DeviceObject);

    DPRINT("NtfsGetStandardInformation(%p, %p, %p, %p)\n", Fcb, DeviceObject, StandardInfo, BufferLength);

    if (*BufferLength < sizeof(FILE_STANDARD_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;


    ASSERT(StandardInfo != ((void*)0));
    ASSERT(Fcb != ((void*)0));

    RtlZeroMemory(StandardInfo,
                  sizeof(FILE_STANDARD_INFORMATION));

    StandardInfo->AllocationSize = Fcb->RFCB.AllocationSize;
    StandardInfo->EndOfFile = Fcb->RFCB.FileSize;
    StandardInfo->NumberOfLinks = Fcb->LinkCount;
    StandardInfo->DeletePending = FALSE;
    StandardInfo->Directory = NtfsFCBIsDirectory(Fcb);

    *BufferLength -= sizeof(FILE_STANDARD_INFORMATION);

    return STATUS_SUCCESS;
}
