
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int NameInformation; int PositionInformation; int EaInformation; int InternalInformation; int StandardInformation; int BasicInformation; } ;
struct TYPE_13__ {int FileName; } ;
typedef TYPE_1__* PVFATFCB ;
typedef scalar_t__* PULONG ;
typedef int PFILE_OBJECT ;
typedef TYPE_1__* PFILE_ALL_INFORMATION ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_MODE_INFORMATION ;
typedef int FILE_ALIGNMENT_INFORMATION ;
typedef int FILE_ACCESS_INFORMATION ;


 int ASSERT (TYPE_1__*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FILE_ALL_INFORMATION ;
 int NT_SUCCESS (int ) ;
 TYPE_11__ NameInformation ;
 int STATUS_BUFFER_OVERFLOW ;
 int VfatGetBasicInformation (int ,TYPE_1__*,int ,int *,scalar_t__*) ;
 int VfatGetEaInformation (int ,TYPE_1__*,int ,int *,scalar_t__*) ;
 int VfatGetInternalInformation (TYPE_1__*,int ,int *,scalar_t__*) ;
 int VfatGetNameInformation (int ,TYPE_1__*,int ,int *,scalar_t__*) ;
 int VfatGetPositionInformation (int ,TYPE_1__*,int ,int *,scalar_t__*) ;
 int VfatGetStandardInformation (TYPE_1__*,int *,scalar_t__*) ;

__attribute__((used)) static
NTSTATUS
VfatGetAllInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_ALL_INFORMATION Info,
    PULONG BufferLength)
{
    NTSTATUS Status;

    ASSERT(Info);
    ASSERT(Fcb);

    if (*BufferLength < FIELD_OFFSET(FILE_ALL_INFORMATION, NameInformation.FileName))
        return STATUS_BUFFER_OVERFLOW;

    *BufferLength -= (sizeof(FILE_ACCESS_INFORMATION) + sizeof(FILE_MODE_INFORMATION) + sizeof(FILE_ALIGNMENT_INFORMATION));


    Status = VfatGetBasicInformation(FileObject, Fcb, DeviceExt, &Info->BasicInformation, BufferLength);
    if (!NT_SUCCESS(Status)) return Status;

    Status = VfatGetStandardInformation(Fcb, &Info->StandardInformation, BufferLength);
    if (!NT_SUCCESS(Status)) return Status;

    Status = VfatGetInternalInformation(Fcb, DeviceExt, &Info->InternalInformation, BufferLength);
    if (!NT_SUCCESS(Status)) return Status;

    Status = VfatGetEaInformation(FileObject, Fcb, DeviceExt, &Info->EaInformation, BufferLength);
    if (!NT_SUCCESS(Status)) return Status;

    Status = VfatGetPositionInformation(FileObject, Fcb, DeviceExt, &Info->PositionInformation, BufferLength);
    if (!NT_SUCCESS(Status)) return Status;

    Status = VfatGetNameInformation(FileObject, Fcb, DeviceExt, &Info->NameInformation, BufferLength);

    return Status;
}
