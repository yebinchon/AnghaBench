
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int removing; scalar_t__ open_files; int tree_lock; TYPE_2__* vde; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* Vpb; TYPE_3__* DeviceExtension; } ;
struct TYPE_9__ {int * mounted_device; } ;
struct TYPE_8__ {int Flags; } ;
typedef int PIRP ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int STATUS_SUCCESS ;
 int TRACE (char*,TYPE_4__*,int ) ;
 int VPB_MOUNTED ;
 int uninit (TYPE_3__*) ;

NTSTATUS pnp_surprise_removal(PDEVICE_OBJECT DeviceObject, PIRP Irp) {
    device_extension* Vcb = DeviceObject->DeviceExtension;

    TRACE("(%p, %p)\n", DeviceObject, Irp);

    if (DeviceObject->Vpb->Flags & VPB_MOUNTED) {
        ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);

        if (Vcb->vde)
            Vcb->vde->mounted_device = ((void*)0);

        Vcb->removing = 1;

        ExReleaseResourceLite(&Vcb->tree_lock);

        if (Vcb->open_files == 0)
            uninit(Vcb);
    }

    return STATUS_SUCCESS;
}
