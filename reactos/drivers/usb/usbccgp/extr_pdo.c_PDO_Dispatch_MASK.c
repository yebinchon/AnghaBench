#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int MajorFunction; } ;
struct TYPE_11__ {int /*<<< orphan*/  Status; } ;
struct TYPE_12__ {TYPE_1__ IoStatus; } ;
typedef  TYPE_2__* PIRP ;
typedef  TYPE_3__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
#define  IRP_MJ_INTERNAL_DEVICE_CONTROL 130 
#define  IRP_MJ_PNP 129 
#define  IRP_MJ_POWER 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC6(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    NTSTATUS Status;

    /* get stack location */
    IoStack = FUNC2(Irp);

    switch(IoStack->MajorFunction)
    {
        case IRP_MJ_PNP:
            return FUNC4(DeviceObject, Irp);
        case IRP_MJ_INTERNAL_DEVICE_CONTROL:
            return FUNC3(DeviceObject, Irp);
        case IRP_MJ_POWER:
            FUNC5(Irp);
            Irp->IoStatus.Status = STATUS_SUCCESS;
            FUNC1(Irp, IO_NO_INCREMENT);
            return STATUS_SUCCESS;
        default:
            FUNC0("PDO_Dispatch Function %x not implemented\n", IoStack->MajorFunction);
            Status = Irp->IoStatus.Status;
            FUNC1(Irp, IO_NO_INCREMENT);
            return Status;
    }
}