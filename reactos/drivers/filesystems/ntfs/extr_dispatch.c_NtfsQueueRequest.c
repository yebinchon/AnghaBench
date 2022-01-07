
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Flags; int WorkQueueItem; int Irp; } ;
typedef TYPE_1__* PNTFS_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int CriticalWorkQueue ;
 int DPRINT (char*,TYPE_1__*,int ) ;
 int ExInitializeWorkItem (int *,int ,TYPE_1__*) ;
 int ExQueueWorkItem (int *,int ) ;
 int IRPCONTEXT_CANWAIT ;
 int IRPCONTEXT_COMPLETE ;
 int IRPCONTEXT_QUEUE ;
 int InterlockedIncrement (int *) ;
 int IoMarkIrpPending (int ) ;
 int NtfsDoRequest ;
 int QueueCount ;
 int STATUS_PENDING ;

__attribute__((used)) static
NTSTATUS
NtfsQueueRequest(PNTFS_IRP_CONTEXT IrpContext)
{
    InterlockedIncrement(&QueueCount);
    DPRINT("NtfsQueueRequest(IrpContext %p), %d\n", IrpContext, QueueCount);

    ASSERT(!(IrpContext->Flags & IRPCONTEXT_QUEUE) &&
           (IrpContext->Flags & IRPCONTEXT_COMPLETE));
    IrpContext->Flags |= IRPCONTEXT_CANWAIT;
    IoMarkIrpPending(IrpContext->Irp);
    ExInitializeWorkItem(&IrpContext->WorkQueueItem, NtfsDoRequest, IrpContext);
    ExQueueWorkItem(&IrpContext->WorkQueueItem, CriticalWorkQueue);

    return STATUS_PENDING;
}
