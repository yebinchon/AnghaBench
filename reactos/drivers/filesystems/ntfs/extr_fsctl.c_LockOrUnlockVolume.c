
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Flags; int OpenHandleCount; } ;
struct TYPE_10__ {TYPE_1__* FsContext; } ;
struct TYPE_9__ {TYPE_3__* FileObject; } ;
struct TYPE_8__ {int Flags; } ;
typedef TYPE_1__* PNTFS_FCB ;
typedef int PIRP ;
typedef TYPE_2__* PIO_STACK_LOCATION ;
typedef TYPE_3__* PFILE_OBJECT ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT (char*,TYPE_4__*,int ,scalar_t__) ;
 int FCB_IS_VOLUME ;
 TYPE_2__* IoGetCurrentIrpStackLocation (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int VCB_VOLUME_LOCKED ;

__attribute__((used)) static
NTSTATUS
LockOrUnlockVolume(PDEVICE_EXTENSION DeviceExt,
                   PIRP Irp,
                   BOOLEAN Lock)
{
    PFILE_OBJECT FileObject;
    PNTFS_FCB Fcb;
    PIO_STACK_LOCATION Stack;

    DPRINT("LockOrUnlockVolume(%p, %p, %d)\n", DeviceExt, Irp, Lock);

    Stack = IoGetCurrentIrpStackLocation(Irp);
    FileObject = Stack->FileObject;
    Fcb = FileObject->FsContext;


    if (!(Fcb->Flags & FCB_IS_VOLUME))
    {
        return STATUS_ACCESS_DENIED;
    }


    if (((DeviceExt->Flags & VCB_VOLUME_LOCKED) && Lock) ||
        (!(DeviceExt->Flags & VCB_VOLUME_LOCKED) && !Lock))
    {
        return STATUS_ACCESS_DENIED;
    }


    if (Lock && DeviceExt->OpenHandleCount != 1)
    {
        return STATUS_ACCESS_DENIED;
    }


    if (Lock)
    {
        DeviceExt->Flags |= VCB_VOLUME_LOCKED;
    }
    else
    {
        DeviceExt->Flags &= ~VCB_VOLUME_LOCKED;
    }

    return STATUS_SUCCESS;
}
