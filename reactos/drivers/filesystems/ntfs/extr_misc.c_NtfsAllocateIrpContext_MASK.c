#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ MajorFunction; int /*<<< orphan*/  FileObject; int /*<<< orphan*/  MinorFunction; } ;
struct TYPE_9__ {int /*<<< orphan*/  IrpContextLookasideList; } ;
struct TYPE_7__ {int Size; int /*<<< orphan*/  Type; } ;
struct TYPE_8__ {scalar_t__ MajorFunction; int IsTopLevel; int /*<<< orphan*/  Flags; int /*<<< orphan*/  PriorityBoost; TYPE_6__* Stack; int /*<<< orphan*/  FileObject; int /*<<< orphan*/  MinorFunction; int /*<<< orphan*/  DeviceObject; scalar_t__ Irp; TYPE_1__ Identifier; } ;
typedef  TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef  scalar_t__ PIRP ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTFS_IRP_CONTEXT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 int /*<<< orphan*/  IRPCONTEXT_COMPLETE ; 
 scalar_t__ IRP_MJ_CLEANUP ; 
 scalar_t__ IRP_MJ_CLOSE ; 
 scalar_t__ IRP_MJ_DEVICE_CONTROL ; 
 scalar_t__ IRP_MJ_FILE_SYSTEM_CONTROL ; 
 scalar_t__ IRP_MJ_SHUTDOWN ; 
 TYPE_6__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NTFS ; 
 int /*<<< orphan*/  NTFS_TYPE_IRP_CONTEXT ; 
 TYPE_4__* NtfsGlobalData ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

PNTFS_IRP_CONTEXT
FUNC6(PDEVICE_OBJECT DeviceObject,
                       PIRP Irp)
{
    PNTFS_IRP_CONTEXT IrpContext;

    FUNC5(NTFS, "NtfsAllocateIrpContext()\n");

    IrpContext = (PNTFS_IRP_CONTEXT)FUNC0(&NtfsGlobalData->IrpContextLookasideList);
    if (IrpContext == NULL)
        return NULL;

    FUNC4(IrpContext, sizeof(NTFS_IRP_CONTEXT));

    IrpContext->Identifier.Type = NTFS_TYPE_IRP_CONTEXT;
    IrpContext->Identifier.Size = sizeof(NTFS_IRP_CONTEXT);
    IrpContext->Irp = Irp;
    IrpContext->DeviceObject = DeviceObject;
    IrpContext->Stack = FUNC1(Irp);
    IrpContext->MajorFunction = IrpContext->Stack->MajorFunction;
    IrpContext->MinorFunction = IrpContext->Stack->MinorFunction;
    IrpContext->FileObject = IrpContext->Stack->FileObject;
    IrpContext->IsTopLevel = (FUNC2() == Irp);
    IrpContext->PriorityBoost = IO_NO_INCREMENT;
    IrpContext->Flags = IRPCONTEXT_COMPLETE;

    if (IrpContext->MajorFunction == IRP_MJ_FILE_SYSTEM_CONTROL ||
        IrpContext->MajorFunction == IRP_MJ_DEVICE_CONTROL ||
        IrpContext->MajorFunction == IRP_MJ_SHUTDOWN ||
        (IrpContext->MajorFunction != IRP_MJ_CLEANUP &&
         IrpContext->MajorFunction != IRP_MJ_CLOSE &&
         FUNC3(Irp)))
    {
        IrpContext->Flags |= IRPCONTEXT_CANWAIT;
    }

    return IrpContext;
}