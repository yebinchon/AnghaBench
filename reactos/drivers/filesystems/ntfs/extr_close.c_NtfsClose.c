
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_4__* DeviceObject; } ;
struct TYPE_14__ {int DirResource; } ;
struct TYPE_13__ {TYPE_5__* DeviceExtension; } ;
struct TYPE_12__ {TYPE_2__* Irp; int Flags; int FileObject; TYPE_4__* DeviceObject; } ;
struct TYPE_10__ {scalar_t__ Information; } ;
struct TYPE_11__ {TYPE_1__ IoStatus; } ;
typedef TYPE_3__* PNTFS_IRP_CONTEXT ;
typedef int PFILE_OBJECT ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef scalar_t__ NTSTATUS ;


 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int IRPCONTEXT_CANWAIT ;
 scalar_t__ NtfsCloseFile (TYPE_5__*,int ) ;
 TYPE_7__* NtfsGlobalData ;
 scalar_t__ NtfsMarkIrpContextForQueue (TYPE_3__*) ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;

NTSTATUS
NtfsClose(PNTFS_IRP_CONTEXT IrpContext)
{
    PDEVICE_EXTENSION DeviceExtension;
    PFILE_OBJECT FileObject;
    NTSTATUS Status;
    PDEVICE_OBJECT DeviceObject;

    DPRINT("NtfsClose() called\n");

    DeviceObject = IrpContext->DeviceObject;
    if (DeviceObject == NtfsGlobalData->DeviceObject)
    {
        DPRINT("Closing file system\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_SUCCESS;
    }

    FileObject = IrpContext->FileObject;
    DeviceExtension = DeviceObject->DeviceExtension;

    if (!ExAcquireResourceExclusiveLite(&DeviceExtension->DirResource,
                                        BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return NtfsMarkIrpContextForQueue(IrpContext);
    }

    Status = NtfsCloseFile(DeviceExtension, FileObject);

    ExReleaseResourceLite(&DeviceExtension->DirResource);

    if (Status == STATUS_PENDING)
    {
        return NtfsMarkIrpContextForQueue(IrpContext);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}
