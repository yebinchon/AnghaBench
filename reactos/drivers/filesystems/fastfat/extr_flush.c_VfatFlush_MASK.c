#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  DirResource; } ;
struct TYPE_18__ {scalar_t__ DeviceObject; } ;
struct TYPE_17__ {int /*<<< orphan*/  MainResource; int /*<<< orphan*/  Flags; } ;
struct TYPE_16__ {scalar_t__ DeviceObject; TYPE_3__* Irp; TYPE_7__* DeviceExt; TYPE_1__* FileObject; } ;
struct TYPE_14__ {scalar_t__ Information; } ;
struct TYPE_15__ {TYPE_2__ IoStatus; } ;
struct TYPE_13__ {scalar_t__ FsContext; } ;
typedef  TYPE_4__* PVFAT_IRP_CONTEXT ;
typedef  TYPE_5__* PVFATFCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FCB_IS_VOLUME ; 
 int /*<<< orphan*/  STATUS_INVALID_DEVICE_REQUEST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_5__*) ; 
 TYPE_6__* VfatGlobalData ; 

NTSTATUS
FUNC6(
    PVFAT_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status;
    PVFATFCB Fcb;

    /* This request is not allowed on the main device object. */
    if (IrpContext->DeviceObject == VfatGlobalData->DeviceObject)
    {
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    Fcb = (PVFATFCB)IrpContext->FileObject->FsContext;
    FUNC0(Fcb);

    if (FUNC1(Fcb->Flags, FCB_IS_VOLUME))
    {
        FUNC2(&IrpContext->DeviceExt->DirResource, TRUE);
        Status = FUNC5(IrpContext->DeviceExt, Fcb);
        FUNC3(&IrpContext->DeviceExt->DirResource);
    }
    else
    {
        FUNC2(&Fcb->MainResource, TRUE);
        Status = FUNC4(IrpContext->DeviceExt, Fcb);
        FUNC3 (&Fcb->MainResource);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}