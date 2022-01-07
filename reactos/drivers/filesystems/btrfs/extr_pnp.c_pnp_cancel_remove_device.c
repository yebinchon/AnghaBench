
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tree_lock; int fileref_lock; TYPE_5__* root_fileref; } ;
typedef TYPE_1__ device_extension ;
struct TYPE_8__ {scalar_t__ open_count; scalar_t__ fcb; } ;
struct TYPE_7__ {TYPE_1__* DeviceExtension; } ;
typedef TYPE_2__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExAcquireResourceSharedLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int IRP_MN_CANCEL_REMOVE_DEVICE ;
 int NT_SUCCESS (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int WARN (char*,int ) ;
 scalar_t__ has_open_children (TYPE_5__*) ;
 int send_disks_pnp_message (TYPE_1__*,int ) ;

__attribute__((used)) static NTSTATUS pnp_cancel_remove_device(PDEVICE_OBJECT DeviceObject) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    ExAcquireResourceSharedLite(&Vcb->tree_lock, 1);

    ExAcquireResourceExclusiveLite(&Vcb->fileref_lock, 1);

    if (Vcb->root_fileref && Vcb->root_fileref->fcb && (Vcb->root_fileref->open_count > 0 || has_open_children(Vcb->root_fileref))) {
        Status = STATUS_ACCESS_DENIED;
        goto end;
    }

    Status = send_disks_pnp_message(Vcb, IRP_MN_CANCEL_REMOVE_DEVICE);
    if (!NT_SUCCESS(Status)) {
        WARN("send_disks_pnp_message returned %08x\n", Status);
        goto end;
    }

end:
    ExReleaseResourceLite(&Vcb->fileref_lock);
    ExReleaseResourceLite(&Vcb->tree_lock);

    return STATUS_SUCCESS;
}
