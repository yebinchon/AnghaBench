
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int DirResource; } ;
struct TYPE_18__ {scalar_t__ DeviceObject; } ;
struct TYPE_17__ {int MainResource; int Flags; } ;
struct TYPE_16__ {scalar_t__ DeviceObject; TYPE_3__* Irp; TYPE_7__* DeviceExt; TYPE_1__* FileObject; } ;
struct TYPE_14__ {scalar_t__ Information; } ;
struct TYPE_15__ {TYPE_2__ IoStatus; } ;
struct TYPE_13__ {scalar_t__ FsContext; } ;
typedef TYPE_4__* PVFAT_IRP_CONTEXT ;
typedef TYPE_5__* PVFATFCB ;
typedef int NTSTATUS ;


 int ASSERT (TYPE_5__*) ;
 scalar_t__ BooleanFlagOn (int ,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FCB_IS_VOLUME ;
 int STATUS_INVALID_DEVICE_REQUEST ;
 int TRUE ;
 int VfatFlushFile (TYPE_7__*,TYPE_5__*) ;
 int VfatFlushVolume (TYPE_7__*,TYPE_5__*) ;
 TYPE_6__* VfatGlobalData ;

NTSTATUS
VfatFlush(
    PVFAT_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status;
    PVFATFCB Fcb;


    if (IrpContext->DeviceObject == VfatGlobalData->DeviceObject)
    {
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    Fcb = (PVFATFCB)IrpContext->FileObject->FsContext;
    ASSERT(Fcb);

    if (BooleanFlagOn(Fcb->Flags, FCB_IS_VOLUME))
    {
        ExAcquireResourceExclusiveLite(&IrpContext->DeviceExt->DirResource, TRUE);
        Status = VfatFlushVolume(IrpContext->DeviceExt, Fcb);
        ExReleaseResourceLite(&IrpContext->DeviceExt->DirResource);
    }
    else
    {
        ExAcquireResourceExclusiveLite(&Fcb->MainResource, TRUE);
        Status = VfatFlushFile(IrpContext->DeviceExt, Fcb);
        ExReleaseResourceLite (&Fcb->MainResource);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}
