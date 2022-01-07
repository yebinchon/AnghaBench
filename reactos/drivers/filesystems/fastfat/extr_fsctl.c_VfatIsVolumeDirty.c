
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_20__ {TYPE_6__* Irp; TYPE_4__* DeviceExt; TYPE_1__* Stack; } ;
struct TYPE_19__ {int OutputBufferLength; } ;
struct TYPE_18__ {TYPE_8__ FileSystemControl; } ;
struct TYPE_16__ {int Information; } ;
struct TYPE_13__ {scalar_t__ SystemBuffer; } ;
struct TYPE_17__ {TYPE_5__ IoStatus; TYPE_2__ AssociatedIrp; } ;
struct TYPE_15__ {TYPE_3__* VolumeFcb; } ;
struct TYPE_14__ {int Flags; } ;
struct TYPE_12__ {TYPE_7__ Parameters; } ;
typedef TYPE_9__* PVFAT_IRP_CONTEXT ;
typedef int * PULONG ;
typedef int NTSTATUS ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,TYPE_9__*) ;
 int STATUS_INVALID_BUFFER_SIZE ;
 int STATUS_INVALID_USER_BUFFER ;
 int STATUS_SUCCESS ;
 int VCB_CLEAR_DIRTY ;
 int VCB_IS_DIRTY ;
 int VOLUME_IS_DIRTY ;

__attribute__((used)) static
NTSTATUS
VfatIsVolumeDirty(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PULONG Flags;

    DPRINT("VfatIsVolumeDirty(IrpContext %p)\n", IrpContext);

    if (IrpContext->Stack->Parameters.FileSystemControl.OutputBufferLength != sizeof(ULONG))
        return STATUS_INVALID_BUFFER_SIZE;
    else if (!IrpContext->Irp->AssociatedIrp.SystemBuffer)
        return STATUS_INVALID_USER_BUFFER;

    Flags = (PULONG)IrpContext->Irp->AssociatedIrp.SystemBuffer;
    *Flags = 0;

    if (BooleanFlagOn(IrpContext->DeviceExt->VolumeFcb->Flags, VCB_IS_DIRTY) &&
        !BooleanFlagOn(IrpContext->DeviceExt->VolumeFcb->Flags, VCB_CLEAR_DIRTY))
    {
        *Flags |= VOLUME_IS_DIRTY;
    }

    IrpContext->Irp->IoStatus.Information = sizeof(ULONG);

    return STATUS_SUCCESS;
}
