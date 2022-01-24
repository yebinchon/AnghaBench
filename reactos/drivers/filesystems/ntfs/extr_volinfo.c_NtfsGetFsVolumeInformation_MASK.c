#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {TYPE_2__* Vpb; } ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_9__ {int VolumeLabelLength; int /*<<< orphan*/  SupportsObjects; TYPE_1__ VolumeCreationTime; int /*<<< orphan*/  VolumeLabel; int /*<<< orphan*/  VolumeSerialNumber; } ;
struct TYPE_8__ {int VolumeLabelLength; int /*<<< orphan*/  VolumeLabel; int /*<<< orphan*/  SerialNumber; } ;
typedef  int* PULONG ;
typedef  TYPE_3__* PFILE_FS_VOLUME_INFORMATION ;
typedef  TYPE_4__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_FS_VOLUME_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
NTSTATUS
FUNC2(PDEVICE_OBJECT DeviceObject,
                           PFILE_FS_VOLUME_INFORMATION FsVolumeInfo,
                           PULONG BufferLength)
{
    FUNC0("NtfsGetFsVolumeInformation() called\n");
    FUNC0("FsVolumeInfo = %p\n", FsVolumeInfo);
    FUNC0("BufferLength %lu\n", *BufferLength);

    FUNC0("Vpb %p\n", DeviceObject->Vpb);

    FUNC0("Required length %lu\n",
           sizeof(FILE_FS_VOLUME_INFORMATION) + DeviceObject->Vpb->VolumeLabelLength);
    FUNC0("LabelLength %hu\n",
           DeviceObject->Vpb->VolumeLabelLength);
    FUNC0("Label %.*S\n",
           DeviceObject->Vpb->VolumeLabelLength / sizeof(WCHAR),
           DeviceObject->Vpb->VolumeLabel);

    if (*BufferLength < sizeof(FILE_FS_VOLUME_INFORMATION))
        return STATUS_INFO_LENGTH_MISMATCH;

    if (*BufferLength < (sizeof(FILE_FS_VOLUME_INFORMATION) + DeviceObject->Vpb->VolumeLabelLength))
        return STATUS_BUFFER_OVERFLOW;

    /* valid entries */
    FsVolumeInfo->VolumeSerialNumber = DeviceObject->Vpb->SerialNumber;
    FsVolumeInfo->VolumeLabelLength = DeviceObject->Vpb->VolumeLabelLength;
    FUNC1(FsVolumeInfo->VolumeLabel,
           DeviceObject->Vpb->VolumeLabel,
           DeviceObject->Vpb->VolumeLabelLength);

    /* dummy entries */
    FsVolumeInfo->VolumeCreationTime.QuadPart = 0;
    FsVolumeInfo->SupportsObjects = FALSE;

    *BufferLength -= (sizeof(FILE_FS_VOLUME_INFORMATION) + DeviceObject->Vpb->VolumeLabelLength);

    FUNC0("BufferLength %lu\n", *BufferLength);
    FUNC0("NtfsGetFsVolumeInformation() done\n");

    return STATUS_SUCCESS;
}