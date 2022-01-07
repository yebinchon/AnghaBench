
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int BytesPerSector; int SectorsPerCluster; int NumberOfClusters; } ;
struct TYPE_13__ {TYPE_2__ FatInfo; } ;
struct TYPE_12__ {TYPE_5__* DeviceExtension; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_11__ {int BytesPerSector; int SectorsPerAllocationUnit; TYPE_1__ TotalAllocationUnits; int AvailableAllocationUnits; } ;
typedef int* PULONG ;
typedef TYPE_3__* PFILE_FS_SIZE_INFORMATION ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_FS_SIZE_INFORMATION ;


 int ASSERT (int) ;
 int CountAvailableClusters (TYPE_5__*,int *) ;
 int DPRINT (char*,...) ;
 scalar_t__ NT_SUCCESS (int ) ;

__attribute__((used)) static
NTSTATUS
FsdGetFsSizeInformation(
    PDEVICE_OBJECT DeviceObject,
    PFILE_FS_SIZE_INFORMATION FsSizeInfo,
    PULONG BufferLength)
{
    PDEVICE_EXTENSION DeviceExt;
    NTSTATUS Status;

    DPRINT("FsdGetFsSizeInformation()\n");
    DPRINT("FsSizeInfo = %p\n", FsSizeInfo);

    ASSERT(*BufferLength >= sizeof(FILE_FS_SIZE_INFORMATION));

    DeviceExt = DeviceObject->DeviceExtension;
    Status = CountAvailableClusters(DeviceExt, &FsSizeInfo->AvailableAllocationUnits);

    FsSizeInfo->TotalAllocationUnits.QuadPart = DeviceExt->FatInfo.NumberOfClusters;
    FsSizeInfo->SectorsPerAllocationUnit = DeviceExt->FatInfo.SectorsPerCluster;
    FsSizeInfo->BytesPerSector = DeviceExt->FatInfo.BytesPerSector;

    DPRINT("Finished FsdGetFsSizeInformation()\n");
    if (NT_SUCCESS(Status))
        *BufferLength -= sizeof(FILE_FS_SIZE_INFORMATION);

    return Status;
}
