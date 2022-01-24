#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_12__ {int DeviceNameOffset; int Size; int /*<<< orphan*/  DeviceNameLength; } ;
struct TYPE_11__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_2__ MOUNTMGR_MOUNT_POINTS ;
typedef  TYPE_2__ MOUNTMGR_MOUNT_POINT ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  IOCTL_MOUNTMGR_DELETE_POINTS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC8(PDEVICE_OBJECT mountmgr, PUNICODE_STRING devpath) {
    NTSTATUS Status;
    MOUNTMGR_MOUNT_POINT* mmp;
    ULONG mmpsize;
    MOUNTMGR_MOUNT_POINTS mmps1, *mmps2;

    FUNC6("removing drive letter\n");

    mmpsize = sizeof(MOUNTMGR_MOUNT_POINT) + devpath->Length;

    mmp = FUNC1(PagedPool, mmpsize, ALLOC_TAG);
    if (!mmp) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC5(mmp, mmpsize);

    mmp->DeviceNameOffset = sizeof(MOUNTMGR_MOUNT_POINT);
    mmp->DeviceNameLength = devpath->Length;
    FUNC4(&mmp[1], devpath->Buffer, devpath->Length);

    Status = FUNC7(mountmgr, IOCTL_MOUNTMGR_DELETE_POINTS, mmp, mmpsize, &mmps1, sizeof(MOUNTMGR_MOUNT_POINTS), false, NULL);

    if (!FUNC3(Status) && Status != STATUS_BUFFER_OVERFLOW) {
        FUNC0("IOCTL_MOUNTMGR_DELETE_POINTS 1 returned %08x\n", Status);
        FUNC2(mmp);
        return Status;
    }

    if (Status != STATUS_BUFFER_OVERFLOW || mmps1.Size == 0) {
        FUNC2(mmp);
        return STATUS_NOT_FOUND;
    }

    mmps2 = FUNC1(PagedPool, mmps1.Size, ALLOC_TAG);
    if (!mmps2) {
        FUNC0("out of memory\n");
        FUNC2(mmp);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC7(mountmgr, IOCTL_MOUNTMGR_DELETE_POINTS, mmp, mmpsize, mmps2, mmps1.Size, false, NULL);

    if (!FUNC3(Status))
        FUNC0("IOCTL_MOUNTMGR_DELETE_POINTS 2 returned %08x\n", Status);

    FUNC2(mmps2);
    FUNC2(mmp);

    return Status;
}