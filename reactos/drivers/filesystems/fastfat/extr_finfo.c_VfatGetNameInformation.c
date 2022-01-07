
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_8__ {scalar_t__ FileNameLength; int FileName; } ;
struct TYPE_6__ {scalar_t__ Length; int Buffer; } ;
struct TYPE_7__ {TYPE_1__ PathNameU; } ;
typedef TYPE_2__* PVFATFCB ;
typedef scalar_t__* PULONG ;
typedef int PFILE_OBJECT ;
typedef TYPE_3__* PFILE_NAME_INFORMATION ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int ) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FILE_NAME_INFORMATION ;
 int * FileName ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static
NTSTATUS
VfatGetNameInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_NAME_INFORMATION NameInfo,
    PULONG BufferLength)
{
    ULONG BytesToCopy;

    UNREFERENCED_PARAMETER(FileObject);
    UNREFERENCED_PARAMETER(DeviceExt);

    ASSERT(NameInfo != ((void*)0));
    ASSERT(FCB != ((void*)0));


    if (*BufferLength < (ULONG)FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]))
        return STATUS_BUFFER_OVERFLOW;


    NameInfo->FileNameLength = FCB->PathNameU.Length;


    BytesToCopy = min(FCB->PathNameU.Length,
                      *BufferLength - FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]));


    RtlCopyMemory(NameInfo->FileName, FCB->PathNameU.Buffer, BytesToCopy);


    if (*BufferLength < FCB->PathNameU.Length + (ULONG)FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]))
    {

        *BufferLength -= FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]) + BytesToCopy;
        return STATUS_BUFFER_OVERFLOW;
    }


    *BufferLength -= (FIELD_OFFSET(FILE_NAME_INFORMATION, FileName[0]) + FCB->PathNameU.Length);

    return STATUS_SUCCESS;
}
