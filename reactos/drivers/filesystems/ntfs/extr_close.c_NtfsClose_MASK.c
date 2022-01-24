#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* DeviceObject; } ;
struct TYPE_14__ {int /*<<< orphan*/  DirResource; } ;
struct TYPE_13__ {TYPE_5__* DeviceExtension; } ;
struct TYPE_12__ {TYPE_2__* Irp; int /*<<< orphan*/  Flags; int /*<<< orphan*/  FileObject; TYPE_4__* DeviceObject; } ;
struct TYPE_10__ {scalar_t__ Information; } ;
struct TYPE_11__ {TYPE_1__ IoStatus; } ;
typedef  TYPE_3__* PNTFS_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  TYPE_4__* PDEVICE_OBJECT ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* NtfsGlobalData ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 

NTSTATUS
FUNC6(PNTFS_IRP_CONTEXT IrpContext)
{
    PDEVICE_EXTENSION DeviceExtension;
    PFILE_OBJECT FileObject;
    NTSTATUS Status;
    PDEVICE_OBJECT DeviceObject;

    FUNC1("NtfsClose() called\n");

    DeviceObject = IrpContext->DeviceObject;
    if (DeviceObject == NtfsGlobalData->DeviceObject)
    {
        FUNC1("Closing file system\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_SUCCESS;
    }

    FileObject = IrpContext->FileObject;
    DeviceExtension = DeviceObject->DeviceExtension;

    if (!FUNC2(&DeviceExtension->DirResource,
                                        FUNC0(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return FUNC5(IrpContext);
    }

    Status = FUNC4(DeviceExtension, FileObject);

    FUNC3(&DeviceExtension->DirResource);

    if (Status == STATUS_PENDING)
    {
        return FUNC5(IrpContext);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}