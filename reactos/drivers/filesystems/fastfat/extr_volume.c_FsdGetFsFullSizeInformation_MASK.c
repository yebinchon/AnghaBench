#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  BytesPerSector; int /*<<< orphan*/  SectorsPerCluster; int /*<<< orphan*/  NumberOfClusters; } ;
struct TYPE_17__ {TYPE_3__ FatInfo; } ;
struct TYPE_16__ {TYPE_6__* DeviceExtension; } ;
struct TYPE_11__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_13__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_12__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_15__ {int /*<<< orphan*/  BytesPerSector; int /*<<< orphan*/  SectorsPerAllocationUnit; TYPE_10__ CallerAvailableAllocationUnits; TYPE_2__ ActualAvailableAllocationUnits; TYPE_1__ TotalAllocationUnits; } ;
typedef  int* PULONG ;
typedef  TYPE_4__* PFILE_FS_FULL_SIZE_INFORMATION ;
typedef  TYPE_5__* PDEVICE_OBJECT ;
typedef  TYPE_6__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_FS_FULL_SIZE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
NTSTATUS
FUNC4(
    PDEVICE_OBJECT DeviceObject,
    PFILE_FS_FULL_SIZE_INFORMATION FsSizeInfo,
    PULONG BufferLength)
{
    PDEVICE_EXTENSION DeviceExt;
    NTSTATUS Status;

    FUNC2("FsdGetFsFullSizeInformation()\n");
    FUNC2("FsSizeInfo = %p\n", FsSizeInfo);

    FUNC0(*BufferLength >= sizeof(FILE_FS_FULL_SIZE_INFORMATION));

    DeviceExt = DeviceObject->DeviceExtension;
    Status = FUNC1(DeviceExt, &FsSizeInfo->CallerAvailableAllocationUnits);

    FsSizeInfo->TotalAllocationUnits.QuadPart = DeviceExt->FatInfo.NumberOfClusters;
    FsSizeInfo->ActualAvailableAllocationUnits.QuadPart = FsSizeInfo->CallerAvailableAllocationUnits.QuadPart;
    FsSizeInfo->SectorsPerAllocationUnit = DeviceExt->FatInfo.SectorsPerCluster;
    FsSizeInfo->BytesPerSector = DeviceExt->FatInfo.BytesPerSector;

    FUNC2("Finished FsdGetFsFullSizeInformation()\n");
    if (FUNC3(Status))
        *BufferLength -= sizeof(FILE_FS_FULL_SIZE_INFORMATION);

    return Status;
}