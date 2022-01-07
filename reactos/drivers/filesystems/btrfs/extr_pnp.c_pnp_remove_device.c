
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int removing; scalar_t__ open_files; int tree_lock; TYPE_2__* vde; int root_file; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* Vpb; TYPE_3__* DeviceExtension; } ;
struct TYPE_9__ {int * mounted_device; } ;
struct TYPE_8__ {int Flags; } ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExAcquireResourceSharedLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int FSRTL_VOLUME_DISMOUNT ;
 int FsRtlNotifyVolumeEvent (int ,int ) ;
 int IRP_MN_REMOVE_DEVICE ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int VPB_MOUNTED ;
 int WARN (char*,int ) ;
 int send_disks_pnp_message (TYPE_3__*,int ) ;
 int uninit (TYPE_3__*) ;

__attribute__((used)) static NTSTATUS pnp_remove_device(PDEVICE_OBJECT DeviceObject) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    ExAcquireResourceSharedLite(&Vcb->tree_lock, 1);

    Status = send_disks_pnp_message(Vcb, IRP_MN_REMOVE_DEVICE);

    if (!NT_SUCCESS(Status))
        WARN("send_disks_pnp_message returned %08x\n", Status);

    ExReleaseResourceLite(&Vcb->tree_lock);

    if (DeviceObject->Vpb->Flags & VPB_MOUNTED) {
        Status = FsRtlNotifyVolumeEvent(Vcb->root_file, FSRTL_VOLUME_DISMOUNT);
        if (!NT_SUCCESS(Status)) {
            WARN("FsRtlNotifyVolumeEvent returned %08x\n", Status);
        }

        if (Vcb->vde)
            Vcb->vde->mounted_device = ((void*)0);

        ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);
        Vcb->removing = 1;
        ExReleaseResourceLite(&Vcb->tree_lock);

        if (Vcb->open_files == 0)
            uninit(Vcb);
    }

    return STATUS_SUCCESS;
}
