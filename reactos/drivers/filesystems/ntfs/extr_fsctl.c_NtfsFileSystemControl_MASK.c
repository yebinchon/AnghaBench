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
struct TYPE_8__ {scalar_t__ Information; } ;
struct TYPE_10__ {TYPE_1__ IoStatus; } ;
struct TYPE_9__ {int MinorFunction; TYPE_3__* Irp; int /*<<< orphan*/  DeviceObject; } ;
typedef  TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef  TYPE_3__* PIRP ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  IRP_MN_KERNEL_CALL 131 
#define  IRP_MN_MOUNT_VOLUME 130 
#define  IRP_MN_USER_FS_REQUEST 129 
#define  IRP_MN_VERIFY_VOLUME 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  STATUS_INVALID_DEVICE_REQUEST ; 

NTSTATUS
FUNC5(PNTFS_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;

    FUNC0("NtfsFileSystemControl() called\n");

    DeviceObject = IrpContext->DeviceObject;
    Irp = IrpContext->Irp;
    Irp->IoStatus.Information = 0;

    switch (IrpContext->MinorFunction)
    {
        case IRP_MN_KERNEL_CALL:
            FUNC1("NTFS: IRP_MN_USER_FS_REQUEST\n");
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;

        case IRP_MN_USER_FS_REQUEST:
            Status = FUNC3(DeviceObject, Irp);
            break;

        case IRP_MN_MOUNT_VOLUME:
            FUNC0("NTFS: IRP_MN_MOUNT_VOLUME\n");
            Status = FUNC2(DeviceObject, Irp);
            break;

        case IRP_MN_VERIFY_VOLUME:
            FUNC1("NTFS: IRP_MN_VERIFY_VOLUME\n");
            Status = FUNC4(DeviceObject, Irp);
            break;

        default:
            FUNC1("NTFS FSC: MinorFunction %d\n", IrpContext->MinorFunction);
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    return Status;
}