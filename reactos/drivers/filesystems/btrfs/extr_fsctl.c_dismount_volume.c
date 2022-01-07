
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ page_file_count; int removing; int tree_lock; TYPE_2__* vde; int open_files; int readonly; scalar_t__ need_write; int locked; int root_file; scalar_t__ disallow_dismount; TYPE_1__* Vpb; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_11__ {int * mounted_device; } ;
struct TYPE_10__ {int Flags; } ;
typedef int PIRP ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int FSRTL_VOLUME_DISMOUNT ;
 int FsRtlNotifyVolumeEvent (int ,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;
 int VPB_MOUNTED ;
 int WARN (char*,...) ;
 int do_write (TYPE_3__*,int ) ;
 int flush_fcb_caches (TYPE_3__*) ;
 int free_trees (TYPE_3__*) ;
 int uninit (TYPE_3__*) ;
 int update_volumes (TYPE_3__*) ;

NTSTATUS dismount_volume(device_extension* Vcb, bool shutdown, PIRP Irp) {
    NTSTATUS Status;
    bool open_files;

    TRACE("FSCTL_DISMOUNT_VOLUME\n");

    if (!(Vcb->Vpb->Flags & VPB_MOUNTED))
        return STATUS_SUCCESS;

    if (!shutdown) {
        if (Vcb->disallow_dismount || Vcb->page_file_count != 0) {
            WARN("attempting to dismount boot volume or one containing a pagefile\n");
            return STATUS_ACCESS_DENIED;
        }

        Status = FsRtlNotifyVolumeEvent(Vcb->root_file, FSRTL_VOLUME_DISMOUNT);
        if (!NT_SUCCESS(Status)) {
            WARN("FsRtlNotifyVolumeEvent returned %08x\n", Status);
        }
    }

    ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);

    if (!Vcb->locked) {
        flush_fcb_caches(Vcb);

        if (Vcb->need_write && !Vcb->readonly) {
            Status = do_write(Vcb, Irp);

            if (!NT_SUCCESS(Status))
                ERR("do_write returned %08x\n", Status);
        }
    }

    free_trees(Vcb);

    Vcb->removing = 1;

    open_files = Vcb->open_files > 0;

    if (Vcb->vde) {
        update_volumes(Vcb);
        Vcb->vde->mounted_device = ((void*)0);
    }

    ExReleaseResourceLite(&Vcb->tree_lock);

    if (!open_files)
        uninit(Vcb);

    return STATUS_SUCCESS;
}
