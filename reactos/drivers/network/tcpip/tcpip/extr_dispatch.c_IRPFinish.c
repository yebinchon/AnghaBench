
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Status; } ;
struct TYPE_7__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PIRP ;
typedef scalar_t__ NTSTATUS ;
typedef int KIRQL ;


 int IO_NETWORK_INCREMENT ;
 int IoAcquireCancelSpinLock (int *) ;
 int IoCompleteRequest (TYPE_2__*,int ) ;
 int IoReleaseCancelSpinLock (int ) ;
 int IoSetCancelRoutine (TYPE_2__*,int *) ;
 scalar_t__ STATUS_PENDING ;

NTSTATUS IRPFinish( PIRP Irp, NTSTATUS Status ) {
    KIRQL OldIrql;

    if (Status != STATUS_PENDING) {
        Irp->IoStatus.Status = Status;
        IoAcquireCancelSpinLock(&OldIrql);
        (void)IoSetCancelRoutine( Irp, ((void*)0) );
        IoReleaseCancelSpinLock(OldIrql);

        IoCompleteRequest( Irp, IO_NETWORK_INCREMENT );
    }

    return Status;
}
