#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Characteristics; } ;
struct TYPE_5__ {int /*<<< orphan*/  Characteristics; int /*<<< orphan*/  DeviceType; } ;
typedef  int* PULONG ;
typedef  TYPE_1__* PFILE_FS_DEVICE_INFORMATION ;
typedef  TYPE_2__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_FS_DEVICE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FILE_DEVICE_DISK ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

__attribute__((used)) static
NTSTATUS
FUNC2(
    PDEVICE_OBJECT DeviceObject,
    PFILE_FS_DEVICE_INFORMATION FsDeviceInfo,
    PULONG BufferLength)
{
    FUNC1("FsdGetFsDeviceInformation()\n");
    FUNC1("FsDeviceInfo = %p\n", FsDeviceInfo);
    FUNC1("BufferLength %lu\n", *BufferLength);
    FUNC1("Required length %lu\n", sizeof(FILE_FS_DEVICE_INFORMATION));

    FUNC0(*BufferLength >= sizeof(FILE_FS_DEVICE_INFORMATION));

    FsDeviceInfo->DeviceType = FILE_DEVICE_DISK;
    FsDeviceInfo->Characteristics = DeviceObject->Characteristics;

    FUNC1("FsdGetFsDeviceInformation() finished.\n");

    *BufferLength -= sizeof(FILE_FS_DEVICE_INFORMATION);
    FUNC1("BufferLength %lu\n", *BufferLength);

    return STATUS_SUCCESS;
}