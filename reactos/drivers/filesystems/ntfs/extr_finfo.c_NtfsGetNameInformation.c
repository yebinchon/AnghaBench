
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {int FileNameLength; int FileName; } ;
struct TYPE_7__ {int PathName; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PNTFS_FCB ;
typedef int PFILE_OBJECT ;
typedef TYPE_2__* PFILE_NAME_INFORMATION ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ASSERT (int ) ;
 int DPRINT (char*,int ,TYPE_1__*,int ,TYPE_2__*,scalar_t__*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FILE_NAME_INFORMATION ;
 int * FileName ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (int ) ;
 scalar_t__ min (int,scalar_t__) ;
 int wcslen (int ) ;

__attribute__((used)) static
NTSTATUS
NtfsGetNameInformation(PFILE_OBJECT FileObject,
                       PNTFS_FCB Fcb,
                       PDEVICE_OBJECT DeviceObject,
                       PFILE_NAME_INFORMATION NameInfo,
                       PULONG BufferLength)
{
    ULONG BytesToCopy;

    UNREFERENCED_PARAMETER(FileObject);
    UNREFERENCED_PARAMETER(DeviceObject);

    DPRINT("NtfsGetNameInformation(%p, %p, %p, %p, %p)\n", FileObject, Fcb, DeviceObject, NameInfo, BufferLength);

    ASSERT(NameInfo != ((void*)0));
    ASSERT(Fcb != ((void*)0));


    if (*BufferLength < (ULONG)FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]))
        return STATUS_BUFFER_TOO_SMALL;


    NameInfo->FileNameLength = wcslen(Fcb->PathName) * sizeof(WCHAR);


    BytesToCopy = min(NameInfo->FileNameLength,
                      *BufferLength - FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]));


    RtlCopyMemory(NameInfo->FileName, Fcb->PathName, BytesToCopy);


    if (*BufferLength < NameInfo->FileNameLength + (ULONG)FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]))
    {

        *BufferLength -= FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]) + BytesToCopy;
        return STATUS_BUFFER_OVERFLOW;
    }


    *BufferLength -= (FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]) + NameInfo->FileNameLength);

    return STATUS_SUCCESS;
}
