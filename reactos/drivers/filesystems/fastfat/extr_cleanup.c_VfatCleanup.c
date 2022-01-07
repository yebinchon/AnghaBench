
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Information; } ;
struct TYPE_12__ {TYPE_2__ IoStatus; } ;
struct TYPE_11__ {scalar_t__ DeviceObject; } ;
struct TYPE_10__ {scalar_t__ DeviceObject; TYPE_7__* Irp; TYPE_1__* DeviceExt; } ;
struct TYPE_8__ {int DirResource; } ;
typedef TYPE_3__* PVFAT_IRP_CONTEXT ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int DPRINT (char*,scalar_t__,TYPE_7__*) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int VfatCleanupFile (TYPE_3__*) ;
 TYPE_4__* VfatGlobalData ;

NTSTATUS
VfatCleanup(
    PVFAT_IRP_CONTEXT IrpContext)
{
    BOOLEAN Deleted;

    DPRINT("VfatCleanup(DeviceObject %p, Irp %p)\n", IrpContext->DeviceObject, IrpContext->Irp);

    if (IrpContext->DeviceObject == VfatGlobalData->DeviceObject)
    {
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_SUCCESS;
    }

    ExAcquireResourceExclusiveLite(&IrpContext->DeviceExt->DirResource, TRUE);
    Deleted = VfatCleanupFile(IrpContext);
    if (!Deleted) ExReleaseResourceLite(&IrpContext->DeviceExt->DirResource);

    IrpContext->Irp->IoStatus.Information = 0;
    return STATUS_SUCCESS;
}
