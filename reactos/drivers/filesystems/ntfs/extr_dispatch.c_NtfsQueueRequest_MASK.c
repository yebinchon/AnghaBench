#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Flags; int /*<<< orphan*/  WorkQueueItem; int /*<<< orphan*/  Irp; } ;
typedef  TYPE_1__* PNTFS_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CriticalWorkQueue ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRPCONTEXT_CANWAIT ; 
 int IRPCONTEXT_COMPLETE ; 
 int IRPCONTEXT_QUEUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NtfsDoRequest ; 
 int /*<<< orphan*/  QueueCount ; 
 int /*<<< orphan*/  STATUS_PENDING ; 

__attribute__((used)) static
NTSTATUS
FUNC6(PNTFS_IRP_CONTEXT IrpContext)
{
    FUNC4(&QueueCount);
    FUNC1("NtfsQueueRequest(IrpContext %p), %d\n", IrpContext, QueueCount);

    FUNC0(!(IrpContext->Flags & IRPCONTEXT_QUEUE) &&
           (IrpContext->Flags & IRPCONTEXT_COMPLETE));
    IrpContext->Flags |= IRPCONTEXT_CANWAIT;
    FUNC5(IrpContext->Irp);
    FUNC2(&IrpContext->WorkQueueItem, NtfsDoRequest, IrpContext);
    FUNC3(&IrpContext->WorkQueueItem, CriticalWorkQueue);

    return STATUS_PENDING;
}