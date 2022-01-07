
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_25__ {TYPE_1__* parent; } ;
typedef TYPE_6__ file_ref ;
struct TYPE_24__ {int Resource; } ;
struct TYPE_21__ {int sequence; void* st_ctime; int transid; } ;
struct TYPE_26__ {int sd_dirty; int sd_deleted; int inode_item_changed; TYPE_5__ Header; TYPE_15__* subvol; TYPE_2__ inode_item; int * sd; scalar_t__ ads; } ;
typedef TYPE_7__ fcb ;
struct TYPE_22__ {int generation; } ;
struct TYPE_27__ {TYPE_3__ superblock; scalar_t__ readonly; } ;
typedef TYPE_8__ device_extension ;
struct TYPE_28__ {int user_set_change_time; TYPE_6__* fileref; } ;
typedef TYPE_9__ ccb ;
struct TYPE_23__ {void* ctime; int ctransid; } ;
struct TYPE_20__ {TYPE_7__* fcb; } ;
struct TYPE_19__ {TYPE_4__ root_item; } ;
struct TYPE_18__ {TYPE_9__* FsContext2; TYPE_7__* FsContext; } ;
typedef int SECURITY_DESCRIPTOR ;
typedef int * PSECURITY_INFORMATION ;
typedef int PIRP ;
typedef TYPE_10__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef int LARGE_INTEGER ;
typedef void* BTRFS_TIME ;


 int ERR (char*,...) ;
 int ExAcquireResourceExclusiveLite (int ,int) ;
 int ExFreePool (int *) ;
 int ExReleaseResourceLite (int ) ;
 int FILE_ACTION_MODIFIED ;
 int FILE_NOTIFY_CHANGE_SECURITY ;
 int IoGetFileObjectGenericMapping () ;
 int KeQuerySystemTime (int *) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_MEDIA_WRITE_PROTECTED ;
 int SeSetSecurityDescriptorInfo (int *,int *,int *,void**,int ,int ) ;
 int TRACE (char*,TYPE_8__*,TYPE_10__*,int *,int ) ;
 scalar_t__ is_subvol_readonly (TYPE_15__*,int ) ;
 int mark_fcb_dirty (TYPE_7__*) ;
 int queue_notification_fcb (TYPE_6__*,int ,int ,int *) ;
 int win_time_to_unix (int ,void**) ;

__attribute__((used)) static NTSTATUS set_file_security(device_extension* Vcb, PFILE_OBJECT FileObject, SECURITY_DESCRIPTOR* sd, PSECURITY_INFORMATION flags, PIRP Irp) {
    NTSTATUS Status;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : ((void*)0);
    SECURITY_DESCRIPTOR* oldsd;
    LARGE_INTEGER time;
    BTRFS_TIME now;

    TRACE("(%p, %p, %p, %x)\n", Vcb, FileObject, sd, *flags);

    if (Vcb->readonly)
        return STATUS_MEDIA_WRITE_PROTECTED;

    if (fcb->ads) {
        if (fileref && fileref->parent)
            fcb = fileref->parent->fcb;
        else {
            ERR("could not find parent fcb for stream\n");
            return STATUS_INTERNAL_ERROR;
        }
    }

    if (!fcb || !ccb)
        return STATUS_INVALID_PARAMETER;

    ExAcquireResourceExclusiveLite(fcb->Header.Resource, 1);

    if (is_subvol_readonly(fcb->subvol, Irp)) {
        Status = STATUS_ACCESS_DENIED;
        goto end;
    }

    oldsd = fcb->sd;

    Status = SeSetSecurityDescriptorInfo(((void*)0), flags, sd, (void**)&fcb->sd, PagedPool, IoGetFileObjectGenericMapping());

    if (!NT_SUCCESS(Status)) {
        ERR("SeSetSecurityDescriptorInfo returned %08x\n", Status);
        goto end;
    }

    ExFreePool(oldsd);

    KeQuerySystemTime(&time);
    win_time_to_unix(time, &now);

    fcb->inode_item.transid = Vcb->superblock.generation;

    if (!ccb->user_set_change_time)
        fcb->inode_item.st_ctime = now;

    fcb->inode_item.sequence++;

    fcb->sd_dirty = 1;
    fcb->sd_deleted = 0;
    fcb->inode_item_changed = 1;

    fcb->subvol->root_item.ctransid = Vcb->superblock.generation;
    fcb->subvol->root_item.ctime = now;

    mark_fcb_dirty(fcb);

    queue_notification_fcb(fileref, FILE_NOTIFY_CHANGE_SECURITY, FILE_ACTION_MODIFIED, ((void*)0));

end:
    ExReleaseResourceLite(fcb->Header.Resource);

    return Status;
}
