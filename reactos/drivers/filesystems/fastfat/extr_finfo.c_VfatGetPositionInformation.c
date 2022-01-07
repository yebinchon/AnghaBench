
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int QuadPart; } ;
struct TYPE_15__ {TYPE_2__ CurrentByteOffset; } ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_14__ {TYPE_1__ CurrentByteOffset; } ;
typedef TYPE_3__* PVFATFCB ;
typedef int* PULONG ;
typedef TYPE_4__* PFILE_POSITION_INFORMATION ;
typedef TYPE_3__* PFILE_OBJECT ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_POSITION_INFORMATION ;


 int DPRINT (char*,...) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (TYPE_3__*) ;

__attribute__((used)) static
NTSTATUS
VfatGetPositionInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_POSITION_INFORMATION PositionInfo,
    PULONG BufferLength)
{
    UNREFERENCED_PARAMETER(FileObject);
    UNREFERENCED_PARAMETER(FCB);
    UNREFERENCED_PARAMETER(DeviceExt);

    DPRINT("VfatGetPositionInformation()\n");

    if (*BufferLength < sizeof(FILE_POSITION_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;

    PositionInfo->CurrentByteOffset.QuadPart =
        FileObject->CurrentByteOffset.QuadPart;

    DPRINT("Getting position %I64x\n",
           PositionInfo->CurrentByteOffset.QuadPart);

    *BufferLength -= sizeof(FILE_POSITION_INFORMATION);
    return STATUS_SUCCESS;
}
