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

/* Type definitions */
struct TYPE_12__ {int IoControlCode; } ;
struct TYPE_13__ {int /*<<< orphan*/  InputBufferLength; int /*<<< orphan*/  OutputBufferLength; } ;
struct TYPE_14__ {TYPE_1__ DeviceIoControl; TYPE_2__ FileSystemControl; } ;
struct TYPE_17__ {TYPE_3__ Parameters; } ;
struct TYPE_15__ {int /*<<< orphan*/  SystemBuffer; } ;
struct TYPE_16__ {int /*<<< orphan*/  RequestorMode; TYPE_4__ AssociatedIrp; } ;
typedef  TYPE_5__* PIRP ;
typedef  TYPE_6__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
#define  IOCTL_BTRFS_PROBE_VOLUME 130 
#define  IOCTL_BTRFS_QUERY_FILESYSTEMS 129 
#define  IOCTL_BTRFS_UNLOAD 128 
 TYPE_6__* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  NormalPagePriority ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC6(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = FUNC0(Irp);
    NTSTATUS Status;

    switch (IrpSp->Parameters.DeviceIoControl.IoControlCode) {
        case IOCTL_BTRFS_QUERY_FILESYSTEMS:
            Status = FUNC5(FUNC3(Irp, NormalPagePriority), IrpSp->Parameters.FileSystemControl.OutputBufferLength);
            break;

        case IOCTL_BTRFS_PROBE_VOLUME:
            Status = FUNC4(Irp->AssociatedIrp.SystemBuffer, IrpSp->Parameters.FileSystemControl.InputBufferLength, Irp->RequestorMode);
            break;

        case IOCTL_BTRFS_UNLOAD:
            Status = FUNC2(Irp);
            break;

        default:
            FUNC1("unhandled ioctl %x\n", IrpSp->Parameters.DeviceIoControl.IoControlCode);
            Status = STATUS_NOT_IMPLEMENTED;
            break;
    }

    return Status;
}