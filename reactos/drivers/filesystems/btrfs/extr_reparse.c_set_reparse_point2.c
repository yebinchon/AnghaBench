
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef scalar_t__ uint16_t ;
typedef int file_ref ;
struct TYPE_29__ {void* st_mtime; void* st_ctime; int sequence; int transid; } ;
struct TYPE_26__ {int* Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
struct TYPE_33__ {scalar_t__ type; int reparse_xattr_changed; int atts_changed; int inode_item_changed; TYPE_5__* subvol; TYPE_11__* Vcb; int atts; TYPE_2__ inode_item; TYPE_10__ reparse_xattr; } ;
typedef TYPE_6__ fcb ;
struct TYPE_34__ {int user_set_write_time; int user_set_change_time; } ;
typedef TYPE_7__ ccb ;
typedef int ULONG ;
struct TYPE_36__ {scalar_t__ QuadPart; } ;
struct TYPE_28__ {int Flags; } ;
struct TYPE_35__ {TYPE_1__ SymbolicLinkReparseBuffer; } ;
struct TYPE_31__ {void* ctime; int ctransid; } ;
struct TYPE_32__ {TYPE_4__ root_item; } ;
struct TYPE_30__ {int generation; } ;
struct TYPE_27__ {TYPE_3__ superblock; } ;
typedef TYPE_8__ REPARSE_DATA_BUFFER ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef TYPE_9__ LARGE_INTEGER ;
typedef void* BTRFS_TIME ;
typedef TYPE_10__ ANSI_STRING ;


 int ALLOC_TAG ;
 scalar_t__ BTRFS_TYPE_BLOCKDEV ;
 scalar_t__ BTRFS_TYPE_CHARDEV ;
 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 scalar_t__ BTRFS_TYPE_FILE ;
 scalar_t__ BTRFS_TYPE_SYMLINK ;
 int ERR (char*,...) ;
 int* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int*) ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int IO_REPARSE_TAG_LXSS_SYMLINK ;
 int IO_REPARSE_TAG_SYMLINK ;
 int KeQuerySystemTime (TYPE_9__*) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlCopyMemory (int*,TYPE_8__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_BUFFER_SIZE ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int SYMLINK_FLAG_RELATIVE ;
 int WARN (char*) ;
 int fFsRtlValidateReparsePointBuffer (int,TYPE_8__*) ;
 int mark_fcb_dirty (TYPE_6__*) ;
 int set_symlink (int ,int *,TYPE_6__*,TYPE_7__*,TYPE_8__*,int,int,int *) ;
 int truncate_file (TYPE_6__*,int ,int ,int *) ;
 int win_time_to_unix (TYPE_9__,void**) ;
 int write_file2 (TYPE_11__*,int ,TYPE_9__,TYPE_8__*,int*,int,int,int,int,int,int *) ;

NTSTATUS set_reparse_point2(fcb* fcb, REPARSE_DATA_BUFFER* rdb, ULONG buflen, ccb* ccb, file_ref* fileref, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;
    ULONG tag;

    if (fcb->type == BTRFS_TYPE_SYMLINK) {
        WARN("tried to set a reparse point on an existing symlink\n");
        return STATUS_INVALID_PARAMETER;
    }





    if (buflen < sizeof(ULONG)) {
        WARN("buffer was not long enough to hold tag\n");
        return STATUS_INVALID_BUFFER_SIZE;
    }

    Status = fFsRtlValidateReparsePointBuffer(buflen, rdb);
    if (!NT_SUCCESS(Status)) {
        ERR("FsRtlValidateReparsePointBuffer returned %08x\n", Status);
        return Status;
    }

    RtlCopyMemory(&tag, rdb, sizeof(ULONG));

    if (fcb->type == BTRFS_TYPE_FILE &&
        ((tag == IO_REPARSE_TAG_SYMLINK && rdb->SymbolicLinkReparseBuffer.Flags & SYMLINK_FLAG_RELATIVE) || tag == IO_REPARSE_TAG_LXSS_SYMLINK)) {
        Status = set_symlink(Irp, fileref, fcb, ccb, rdb, buflen, tag == IO_REPARSE_TAG_SYMLINK, rollback);
        fcb->atts |= FILE_ATTRIBUTE_REPARSE_POINT;
    } else {
        LARGE_INTEGER offset, time;
        BTRFS_TIME now;

        if (fcb->type == BTRFS_TYPE_DIRECTORY || fcb->type == BTRFS_TYPE_CHARDEV || fcb->type == BTRFS_TYPE_BLOCKDEV) {
            ANSI_STRING buf;

            buf.Buffer = ExAllocatePoolWithTag(PagedPool, buflen, ALLOC_TAG);
            if (!buf.Buffer) {
                ERR("out of memory\n");
                return STATUS_INSUFFICIENT_RESOURCES;
            }
            buf.Length = buf.MaximumLength = (uint16_t)buflen;

            if (fcb->reparse_xattr.Buffer)
                ExFreePool(fcb->reparse_xattr.Buffer);

            fcb->reparse_xattr = buf;
            RtlCopyMemory(buf.Buffer, rdb, buflen);

            fcb->reparse_xattr_changed = 1;

            Status = STATUS_SUCCESS;
        } else {
            Status = truncate_file(fcb, 0, Irp, rollback);
            if (!NT_SUCCESS(Status)) {
                ERR("truncate_file returned %08x\n", Status);
                return Status;
            }

            offset.QuadPart = 0;

            Status = write_file2(fcb->Vcb, Irp, offset, rdb, &buflen, 0, 1, 1, 0, 0, rollback);
            if (!NT_SUCCESS(Status)) {
                ERR("write_file2 returned %08x\n", Status);
                return Status;
            }
        }

        KeQuerySystemTime(&time);
        win_time_to_unix(time, &now);

        fcb->inode_item.transid = fcb->Vcb->superblock.generation;
        fcb->inode_item.sequence++;

        if (!ccb || !ccb->user_set_change_time)
            fcb->inode_item.st_ctime = now;

        if (!ccb || !ccb->user_set_write_time)
            fcb->inode_item.st_mtime = now;

        fcb->atts |= FILE_ATTRIBUTE_REPARSE_POINT;
        fcb->atts_changed = 1;

        fcb->subvol->root_item.ctransid = fcb->Vcb->superblock.generation;
        fcb->subvol->root_item.ctime = now;

        fcb->inode_item_changed = 1;
        mark_fcb_dirty(fcb);
    }

    return STATUS_SUCCESS;
}
