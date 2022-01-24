#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  BytesPerSector; int /*<<< orphan*/  SectorsPerCluster; int /*<<< orphan*/  ClusterCount; } ;
struct TYPE_15__ {TYPE_3__ NtfsInfo; } ;
struct TYPE_14__ {TYPE_6__* DeviceExtension; } ;
struct TYPE_11__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_10__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_13__ {int /*<<< orphan*/  BytesPerSector; int /*<<< orphan*/  SectorsPerAllocationUnit; TYPE_2__ TotalAllocationUnits; TYPE_1__ AvailableAllocationUnits; } ;
typedef  int* PULONG ;
typedef  TYPE_4__* PFILE_FS_SIZE_INFORMATION ;
typedef  TYPE_5__* PDEVICE_OBJECT ;
typedef  TYPE_6__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_FS_SIZE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

__attribute__((used)) static
NTSTATUS
FUNC3(PDEVICE_OBJECT DeviceObject,
                         PFILE_FS_SIZE_INFORMATION FsSizeInfo,
                         PULONG BufferLength)
{
    PDEVICE_EXTENSION DeviceExt;
    NTSTATUS Status = STATUS_SUCCESS;

    FUNC0("NtfsGetFsSizeInformation()\n");
    FUNC0("FsSizeInfo = %p\n", FsSizeInfo);

    if (*BufferLength < sizeof(FILE_FS_SIZE_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;

    DeviceExt = DeviceObject->DeviceExtension;

    FsSizeInfo->AvailableAllocationUnits.QuadPart = FUNC2(DeviceExt);
    FsSizeInfo->TotalAllocationUnits.QuadPart = DeviceExt->NtfsInfo.ClusterCount;
    FsSizeInfo->SectorsPerAllocationUnit = DeviceExt->NtfsInfo.SectorsPerCluster;
    FsSizeInfo->BytesPerSector = DeviceExt->NtfsInfo.BytesPerSector;

    FUNC0("Finished NtfsGetFsSizeInformation()\n");
    if (FUNC1(Status))
        *BufferLength -= sizeof(FILE_FS_SIZE_INFORMATION);

    return Status;
}