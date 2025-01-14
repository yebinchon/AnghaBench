
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ volume_fcb; } ;
typedef TYPE_6__ device_extension ;
typedef scalar_t__ ULONG ;
struct TYPE_13__ {int OutputBufferLength; } ;
struct TYPE_14__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_20__ {TYPE_3__* FileObject; TYPE_2__ Parameters; } ;
struct TYPE_16__ {int Information; } ;
struct TYPE_17__ {scalar_t__* SystemBuffer; } ;
struct TYPE_19__ {TYPE_4__ IoStatus; int * MdlAddress; TYPE_5__ AssociatedIrp; } ;
struct TYPE_15__ {scalar_t__ FsContext; } ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int LowPagePriority ;
 scalar_t__* MmGetSystemAddressForMdlSafe (int *,int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_INVALID_USER_BUFFER ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS is_volume_dirty(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    ULONG* volstate;

    if (Irp->AssociatedIrp.SystemBuffer) {
        volstate = Irp->AssociatedIrp.SystemBuffer;
    } else if (Irp->MdlAddress != ((void*)0)) {
        volstate = MmGetSystemAddressForMdlSafe(Irp->MdlAddress, LowPagePriority);

        if (!volstate)
            return STATUS_INSUFFICIENT_RESOURCES;
    } else
        return STATUS_INVALID_USER_BUFFER;

    if (IrpSp->Parameters.FileSystemControl.OutputBufferLength < sizeof(ULONG))
        return STATUS_INVALID_PARAMETER;

    *volstate = 0;

    if (IrpSp->FileObject->FsContext != Vcb->volume_fcb)
        return STATUS_INVALID_PARAMETER;

    Irp->IoStatus.Information = sizeof(ULONG);

    return STATUS_SUCCESS;
}
