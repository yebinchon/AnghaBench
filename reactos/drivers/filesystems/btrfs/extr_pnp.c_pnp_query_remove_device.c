
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int removing; scalar_t__ open_files; int tree_lock; int readonly; scalar_t__ need_write; TYPE_6__* root_fileref; } ;
typedef TYPE_1__ device_extension ;
struct TYPE_11__ {scalar_t__ open_count; scalar_t__ fcb; } ;
struct TYPE_10__ {TYPE_1__* DeviceExtension; } ;
typedef int PIRP ;
typedef TYPE_2__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int IRP_MN_QUERY_REMOVE_DEVICE ;
 int NT_SUCCESS (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int WARN (char*,int ) ;
 int do_write (TYPE_1__*,int ) ;
 int free_trees (TYPE_1__*) ;
 scalar_t__ has_open_children (TYPE_6__*) ;
 int send_disks_pnp_message (TYPE_1__*,int ) ;
 int uninit (TYPE_1__*) ;

NTSTATUS pnp_query_remove_device(PDEVICE_OBJECT DeviceObject, PIRP Irp) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);

    if (Vcb->root_fileref && Vcb->root_fileref->fcb && (Vcb->root_fileref->open_count > 0 || has_open_children(Vcb->root_fileref))) {
        ExReleaseResourceLite(&Vcb->tree_lock);
        return STATUS_ACCESS_DENIED;
    }

    Status = send_disks_pnp_message(Vcb, IRP_MN_QUERY_REMOVE_DEVICE);
    if (!NT_SUCCESS(Status)) {
        WARN("send_disks_pnp_message returned %08x\n", Status);
        ExReleaseResourceLite(&Vcb->tree_lock);
        return Status;
    }

    Vcb->removing = 1;

    if (Vcb->need_write && !Vcb->readonly) {
        Status = do_write(Vcb, Irp);

        free_trees(Vcb);

        if (!NT_SUCCESS(Status)) {
            ERR("do_write returned %08x\n", Status);
            ExReleaseResourceLite(&Vcb->tree_lock);
            return Status;
        }
    }

    ExReleaseResourceLite(&Vcb->tree_lock);

    if (Vcb->open_files == 0)
        uninit(Vcb);

    return STATUS_SUCCESS;
}
