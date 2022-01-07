
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ locked_fileobj; int locked; } ;
typedef TYPE_1__ device_extension ;
struct TYPE_7__ {scalar_t__ FileObject; } ;
typedef int PIRP ;
typedef TYPE_2__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 int FSRTL_VOLUME_UNLOCK ;
 int FsRtlNotifyVolumeEvent (scalar_t__,int ) ;
 TYPE_2__* IoGetCurrentIrpStackLocation (int ) ;
 int STATUS_NOT_LOCKED ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;
 int do_unlock_volume (TYPE_1__*) ;

__attribute__((used)) static NTSTATUS unlock_volume(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);

    TRACE("FSCTL_UNLOCK_VOLUME\n");

    if (!Vcb->locked || IrpSp->FileObject != Vcb->locked_fileobj)
        return STATUS_NOT_LOCKED;

    TRACE("unlocking volume\n");

    do_unlock_volume(Vcb);

    FsRtlNotifyVolumeEvent(IrpSp->FileObject, FSRTL_VOLUME_UNLOCK);

    return STATUS_SUCCESS;
}
