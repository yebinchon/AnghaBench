#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Information; } ;
struct TYPE_12__ {TYPE_1__ IoStatus; } ;
struct TYPE_11__ {scalar_t__ DeviceObject; } ;
struct TYPE_10__ {scalar_t__ DeviceObject; void* PriorityBoost; TYPE_2__* DeviceExt; TYPE_5__* Irp; } ;
struct TYPE_9__ {int /*<<< orphan*/  DirResource; } ;
typedef  TYPE_3__* PVFAT_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FILE_OPENED ; 
 void* IO_DISK_INCREMENT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_5__*) ; 
 TYPE_4__* VfatGlobalData ; 

NTSTATUS
FUNC6(
    PVFAT_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status;

    FUNC0(IrpContext);

    if (IrpContext->DeviceObject == VfatGlobalData->DeviceObject)
    {
        /* DeviceObject represents FileSystem instead of logical volume */
        FUNC1 ("FsdCreate called with file system\n");
        IrpContext->Irp->IoStatus.Information = FILE_OPENED;
        IrpContext->PriorityBoost = IO_DISK_INCREMENT;

        return STATUS_SUCCESS;
    }

    IrpContext->Irp->IoStatus.Information = 0;
    FUNC2(&IrpContext->DeviceExt->DirResource, TRUE);
    Status = FUNC5(IrpContext->DeviceObject, IrpContext->Irp);
    FUNC3(&IrpContext->DeviceExt->DirResource);

    if (FUNC4(Status))
        IrpContext->PriorityBoost = IO_DISK_INCREMENT;

    return Status;
}