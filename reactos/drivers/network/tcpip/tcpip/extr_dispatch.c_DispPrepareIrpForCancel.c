
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* FileObject; } ;
struct TYPE_11__ {int Status; scalar_t__ Information; } ;
struct TYPE_14__ {TYPE_1__ IoStatus; int Cancel; } ;
struct TYPE_13__ {int CancelIrps; } ;
struct TYPE_12__ {scalar_t__ FsContext; } ;
typedef TYPE_3__* PTRANSPORT_CONTEXT ;
typedef TYPE_4__* PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef int PDRIVER_CANCEL ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 int DEBUG_IRP ;
 int IoAcquireCancelSpinLock (int *) ;
 TYPE_5__* IoGetCurrentIrpStackLocation (TYPE_4__*) ;
 int IoReleaseCancelSpinLock (int ) ;
 int IoSetCancelRoutine (TYPE_4__*,int ) ;
 int STATUS_CANCELLED ;
 int STATUS_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS DispPrepareIrpForCancel(
    PTRANSPORT_CONTEXT Context,
    PIRP Irp,
    PDRIVER_CANCEL CancelRoutine)
{
    KIRQL OldIrql;
    PIO_STACK_LOCATION IrpSp;
    PTRANSPORT_CONTEXT TransContext;

    TI_DbgPrint(DEBUG_IRP, ("Called.\n"));

    IrpSp = IoGetCurrentIrpStackLocation(Irp);
    TransContext = (PTRANSPORT_CONTEXT)IrpSp->FileObject->FsContext;

    IoAcquireCancelSpinLock(&OldIrql);

    if (!Irp->Cancel && !TransContext->CancelIrps) {
        (void)IoSetCancelRoutine(Irp, CancelRoutine);
        IoReleaseCancelSpinLock(OldIrql);

        TI_DbgPrint(DEBUG_IRP, ("Leaving (IRP at 0x%X can now be cancelled).\n", Irp));

        return STATUS_SUCCESS;
    }



    IoReleaseCancelSpinLock(OldIrql);

    Irp->IoStatus.Status = STATUS_CANCELLED;
    Irp->IoStatus.Information = 0;

    TI_DbgPrint(DEBUG_IRP, ("Leaving (IRP was already cancelled).\n"));

    return Irp->IoStatus.Status;
}
