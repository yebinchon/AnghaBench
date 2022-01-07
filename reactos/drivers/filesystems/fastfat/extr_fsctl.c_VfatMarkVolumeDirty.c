
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* VolumeFcb; } ;
struct TYPE_8__ {TYPE_3__* DeviceExt; } ;
struct TYPE_7__ {int Flags; } ;
typedef TYPE_2__* PVFAT_IRP_CONTEXT ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,TYPE_2__*) ;
 int STATUS_SUCCESS ;
 int SetDirtyStatus (TYPE_3__*,int ) ;
 int TRUE ;
 int VCB_CLEAR_DIRTY ;
 int VCB_IS_DIRTY ;

__attribute__((used)) static
NTSTATUS
VfatMarkVolumeDirty(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PDEVICE_EXTENSION DeviceExt;
    NTSTATUS Status = STATUS_SUCCESS;

    DPRINT("VfatMarkVolumeDirty(IrpContext %p)\n", IrpContext);
    DeviceExt = IrpContext->DeviceExt;

    if (!BooleanFlagOn(DeviceExt->VolumeFcb->Flags, VCB_IS_DIRTY))
    {
        Status = SetDirtyStatus(DeviceExt, TRUE);
    }

    DeviceExt->VolumeFcb->Flags &= ~VCB_CLEAR_DIRTY;

    return Status;
}
