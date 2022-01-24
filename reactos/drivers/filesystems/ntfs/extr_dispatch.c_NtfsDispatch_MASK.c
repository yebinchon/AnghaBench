#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  Status; } ;
struct TYPE_25__ {TYPE_1__ IoStatus; } ;
struct TYPE_24__ {int MajorFunction; int Flags; int /*<<< orphan*/  PriorityBoost; TYPE_3__* Irp; } ;
struct TYPE_22__ {int /*<<< orphan*/  IrpContextLookasideList; int /*<<< orphan*/  EnableWriteSupport; } ;
typedef  TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef  TYPE_3__* PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int IRPCONTEXT_COMPLETE ; 
 int IRPCONTEXT_QUEUE ; 
#define  IRP_MJ_CLEANUP 139 
#define  IRP_MJ_CLOSE 138 
#define  IRP_MJ_CREATE 137 
#define  IRP_MJ_DEVICE_CONTROL 136 
#define  IRP_MJ_DIRECTORY_CONTROL 135 
#define  IRP_MJ_FILE_SYSTEM_CONTROL 134 
#define  IRP_MJ_QUERY_INFORMATION 133 
#define  IRP_MJ_QUERY_VOLUME_INFORMATION 132 
#define  IRP_MJ_READ 131 
#define  IRP_MJ_SET_INFORMATION 130 
#define  IRP_MJ_SET_VOLUME_INFORMATION 129 
#define  IRP_MJ_WRITE 128 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NTFS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_12__* NtfsGlobalData ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
NTSTATUS
FUNC22(PNTFS_IRP_CONTEXT IrpContext)
{
    PIRP Irp = IrpContext->Irp;
    NTSTATUS Status = STATUS_UNSUCCESSFUL;

    FUNC21(NTFS, "NtfsDispatch()\n");

    FUNC3();

    FUNC13(Irp);

    switch (IrpContext->MajorFunction)
    {
        case IRP_MJ_QUERY_VOLUME_INFORMATION:
            Status = FUNC15(IrpContext);
            break;

        case IRP_MJ_SET_VOLUME_INFORMATION:
            Status = FUNC19(IrpContext);
            break;

        case IRP_MJ_QUERY_INFORMATION:
            Status = FUNC14(IrpContext);
            break;

        case IRP_MJ_SET_INFORMATION:
            if (!NtfsGlobalData->EnableWriteSupport)
            {
                FUNC1("NTFS write-support is EXPERIMENTAL and is disabled by default!\n");
                Status = STATUS_ACCESS_DENIED;
            }
            else
            {
                Status = FUNC18(IrpContext);
            }
            break;

        case IRP_MJ_DIRECTORY_CONTROL:
            Status = FUNC11(IrpContext);
            break;

        case IRP_MJ_READ:
            Status = FUNC17(IrpContext);
            break;

        case IRP_MJ_DEVICE_CONTROL:
            Status = FUNC10(IrpContext);
             break;

        case IRP_MJ_WRITE:
            if (!NtfsGlobalData->EnableWriteSupport)
            {
                FUNC1("NTFS write-support is EXPERIMENTAL and is disabled by default!\n");
                Status = STATUS_ACCESS_DENIED;
            }
            else
            {
                Status = FUNC20(IrpContext);
            }
            break;

        case IRP_MJ_CLOSE:
            Status = FUNC8(IrpContext);
            break;

        case IRP_MJ_CLEANUP:
            Status = FUNC7(IrpContext);
            break;

        case IRP_MJ_CREATE:
            Status = FUNC9(IrpContext);
            break;

        case IRP_MJ_FILE_SYSTEM_CONTROL:
            Status = FUNC12(IrpContext);
            break;
    }

    FUNC0((!(IrpContext->Flags & IRPCONTEXT_COMPLETE) && !(IrpContext->Flags & IRPCONTEXT_QUEUE)) ||
           ((IrpContext->Flags & IRPCONTEXT_COMPLETE) && !(IrpContext->Flags & IRPCONTEXT_QUEUE)) ||
           (!(IrpContext->Flags & IRPCONTEXT_COMPLETE) && (IrpContext->Flags & IRPCONTEXT_QUEUE)));

    if (IrpContext->Flags & IRPCONTEXT_COMPLETE)
    {
        Irp->IoStatus.Status = Status;
        FUNC5(Irp, IrpContext->PriorityBoost);
    }

    if (IrpContext->Flags & IRPCONTEXT_QUEUE)
    {
        /* Reset our status flags before queueing the IRP */
        IrpContext->Flags |= IRPCONTEXT_COMPLETE;
        IrpContext->Flags &= ~IRPCONTEXT_QUEUE;
        Status = FUNC16(IrpContext);
    }
    else
    {
        FUNC2(&NtfsGlobalData->IrpContextLookasideList, IrpContext);
    }

    FUNC6(NULL);
    FUNC4();

    return Status;
}