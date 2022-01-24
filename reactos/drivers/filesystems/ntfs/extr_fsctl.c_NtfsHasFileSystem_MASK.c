#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_10__ {scalar_t__ MediaType; scalar_t__ PartitionType; int /*<<< orphan*/  BytesPerSector; } ;
struct TYPE_8__ {scalar_t__* Unused0; scalar_t__* Unused3; int BytesPerSector; int SectorsPerCluster; } ;
struct TYPE_9__ {TYPE_1__ BPB; int /*<<< orphan*/  OEMID; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  TYPE_2__* PBOOT_SECTOR ;
typedef  TYPE_3__ PARTITION_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ DISK_GEOMETRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FixedMedia ; 
 int /*<<< orphan*/  IOCTL_DISK_GET_DRIVE_GEOMETRY ; 
 int /*<<< orphan*/  IOCTL_DISK_GET_PARTITION_INFO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PARTITION_IFS ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_UNRECOGNIZED_VOLUME ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
NTSTATUS
FUNC8(PDEVICE_OBJECT DeviceToMount)
{
    PARTITION_INFORMATION PartitionInfo;
    DISK_GEOMETRY DiskGeometry;
    ULONG ClusterSize, Size, k;
    PBOOT_SECTOR BootSector;
    NTSTATUS Status;

    FUNC0("NtfsHasFileSystem() called\n");

    Size = sizeof(DISK_GEOMETRY);
    Status = FUNC5(DeviceToMount,
                                 IOCTL_DISK_GET_DRIVE_GEOMETRY,
                                 NULL,
                                 0,
                                 &DiskGeometry,
                                 &Size,
                                 TRUE);
    if (!FUNC4(Status))
    {
        FUNC1("NtfsDeviceIoControl() failed (Status %lx)\n", Status);
        return Status;
    }

    if (DiskGeometry.MediaType == FixedMedia)
    {
        /* We have found a hard disk */
        Size = sizeof(PARTITION_INFORMATION);
        Status = FUNC5(DeviceToMount,
                                     IOCTL_DISK_GET_PARTITION_INFO,
                                     NULL,
                                     0,
                                     &PartitionInfo,
                                     &Size,
                                     TRUE);
        if (!FUNC4(Status))
        {
            FUNC1("NtfsDeviceIoControl() failed (Status %lx)\n", Status);
            return Status;
        }

        if (PartitionInfo.PartitionType != PARTITION_IFS)
        {
            FUNC1("Invalid partition type\n");
            return STATUS_UNRECOGNIZED_VOLUME;
        }
    }

    FUNC1("BytesPerSector: %lu\n", DiskGeometry.BytesPerSector);
    BootSector = FUNC2(NonPagedPool,
                                       DiskGeometry.BytesPerSector,
                                       TAG_NTFS);
    if (BootSector == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC6(DeviceToMount,
                             0,
                             1,
                             DiskGeometry.BytesPerSector,
                             (PVOID)BootSector,
                             TRUE);
    if (!FUNC4(Status))
    {
        goto ByeBye;
    }

    /*
     * Check values of different fields. If those fields have not expected
     * values, we fail, to avoid mounting partitions that Windows won't mount.
     */

    /* OEMID: this field must be NTFS */
    if (FUNC7(BootSector->OEMID, "NTFS    ", 8) != 8)
    {
        FUNC1("Failed with NTFS-identifier: [%.8s]\n", BootSector->OEMID);
        Status = STATUS_UNRECOGNIZED_VOLUME;
        goto ByeBye;
    }

    /* Unused0: this field must be COMPLETELY null */
    for (k = 0; k < 7; k++)
    {
        if (BootSector->BPB.Unused0[k] != 0)
        {
            FUNC1("Failed in field Unused0: [%.7s]\n", BootSector->BPB.Unused0);
            Status = STATUS_UNRECOGNIZED_VOLUME;
            goto ByeBye;
        }
    }

    /* Unused3: this field must be COMPLETELY null */
    for (k = 0; k < 4; k++)
    {
        if (BootSector->BPB.Unused3[k] != 0)
        {
            FUNC1("Failed in field Unused3: [%.4s]\n", BootSector->BPB.Unused3);
            Status = STATUS_UNRECOGNIZED_VOLUME;
            goto ByeBye;
        }
    }

    /* Check cluster size */
    ClusterSize = BootSector->BPB.BytesPerSector * BootSector->BPB.SectorsPerCluster;
    if (ClusterSize != 512 && ClusterSize != 1024 && 
        ClusterSize != 2048 && ClusterSize != 4096 &&
        ClusterSize != 8192 && ClusterSize != 16384 &&
        ClusterSize != 32768 && ClusterSize != 65536)
    {
        FUNC1("Cluster size failed: %hu, %hu, %hu\n",
                BootSector->BPB.BytesPerSector,
                BootSector->BPB.SectorsPerCluster,
                ClusterSize);
        Status = STATUS_UNRECOGNIZED_VOLUME;
        goto ByeBye;
    }

ByeBye:
    FUNC3(BootSector);

    return Status;
}