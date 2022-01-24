#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_23__ ;
typedef  struct TYPE_37__   TYPE_1__ ;
typedef  struct TYPE_36__   TYPE_16__ ;
typedef  struct TYPE_35__   TYPE_15__ ;
typedef  struct TYPE_34__   TYPE_14__ ;
typedef  struct TYPE_33__   TYPE_13__ ;
typedef  struct TYPE_32__   TYPE_12__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
struct TYPE_46__ {TYPE_2__* dc; TYPE_5__* parent; } ;
typedef  TYPE_9__ file_ref ;
struct TYPE_43__ {int /*<<< orphan*/  Resource; } ;
struct TYPE_45__ {void* otime; void* st_atime; void* st_mtime; void* st_ctime; int /*<<< orphan*/  sequence; int /*<<< orphan*/  transid; } ;
struct TYPE_30__ {scalar_t__ type; scalar_t__ inode; int atts_changed; int atts; int atts_deleted; int inode_item_changed; TYPE_6__ Header; TYPE_8__ inode_item; TYPE_23__* subvol; scalar_t__ ads; } ;
typedef  TYPE_10__ fcb ;
struct TYPE_40__ {int /*<<< orphan*/  generation; } ;
struct TYPE_31__ {TYPE_3__ superblock; } ;
typedef  TYPE_11__ device_extension ;
struct TYPE_32__ {int user_set_creation_time; int user_set_access_time; int user_set_write_time; int user_set_change_time; TYPE_9__* fileref; } ;
typedef  TYPE_12__ ccb ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_44__ {int flags; void* ctime; int /*<<< orphan*/  ctransid; } ;
struct TYPE_42__ {TYPE_10__* fcb; } ;
struct TYPE_41__ {TYPE_16__* SystemBuffer; } ;
struct TYPE_37__ {int Length; char* Buffer; } ;
struct TYPE_39__ {TYPE_1__ name; } ;
struct TYPE_38__ {scalar_t__ send_ops; TYPE_7__ root_item; } ;
struct TYPE_35__ {int QuadPart; } ;
struct TYPE_36__ {int FileAttributes; TYPE_15__ ChangeTime; TYPE_15__ LastWriteTime; TYPE_15__ LastAccessTime; TYPE_15__ CreationTime; } ;
struct TYPE_34__ {TYPE_12__* FsContext2; TYPE_10__* FsContext; } ;
struct TYPE_33__ {TYPE_4__ AssociatedIrp; } ;
typedef  TYPE_13__* PIRP ;
typedef  TYPE_14__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_15__ LARGE_INTEGER ;
typedef  TYPE_16__ FILE_BASIC_INFORMATION ;
typedef  void* BTRFS_TIME ;

/* Variables and functions */
 int BTRFS_SUBVOL_READONLY ; 
 scalar_t__ BTRFS_TYPE_DIRECTORY ; 
 scalar_t__ BTRFS_TYPE_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ACTION_MODIFIED ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FILE_ATTRIBUTE_REPARSE_POINT ; 
 int FILE_NOTIFY_CHANGE_ATTRIBUTES ; 
 int FILE_NOTIFY_CHANGE_CREATION ; 
 int FILE_NOTIFY_CHANGE_LAST_ACCESS ; 
 int FILE_NOTIFY_CHANGE_LAST_WRITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_15__*) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_DEVICE_NOT_READY ; 
 int /*<<< orphan*/  STATUS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ SUBVOL_ROOT_INODE ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_11__*,TYPE_23__*,scalar_t__,scalar_t__,int,int,TYPE_13__*) ; 
 scalar_t__ FUNC7 (TYPE_23__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_15__,void**) ; 

__attribute__((used)) static NTSTATUS FUNC11(device_extension* Vcb, PIRP Irp, PFILE_OBJECT FileObject) {
    FILE_BASIC_INFORMATION* fbi = Irp->AssociatedIrp.SystemBuffer;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : NULL;
    ULONG defda, filter = 0;
    bool inode_item_changed = false;
    NTSTATUS Status;

    if (fcb->ads) {
        if (fileref && fileref->parent)
            fcb = fileref->parent->fcb;
        else {
            FUNC0("stream did not have fileref\n");
            return STATUS_INTERNAL_ERROR;
        }
    }

    if (!ccb) {
        FUNC0("ccb was NULL\n");
        return STATUS_INVALID_PARAMETER;
    }

    FUNC4("file = %p, attributes = %x\n", FileObject, fbi->FileAttributes);

    FUNC1(fcb->Header.Resource, true);

    if (fbi->FileAttributes & FILE_ATTRIBUTE_DIRECTORY && fcb->type != BTRFS_TYPE_DIRECTORY) {
        FUNC5("attempted to set FILE_ATTRIBUTE_DIRECTORY on non-directory\n");
        Status = STATUS_INVALID_PARAMETER;
        goto end;
    }

    if (fcb->inode == SUBVOL_ROOT_INODE && FUNC7(fcb->subvol, Irp) &&
        (fbi->FileAttributes == 0 || fbi->FileAttributes & FILE_ATTRIBUTE_READONLY)) {
        Status = STATUS_ACCESS_DENIED;
        goto end;
    }

    // don't allow readonly subvol to be made r/w if send operation running on it
    if (fcb->inode == SUBVOL_ROOT_INODE && fcb->subvol->root_item.flags & BTRFS_SUBVOL_READONLY &&
        fcb->subvol->send_ops > 0) {
        Status = STATUS_DEVICE_NOT_READY;
        goto end;
    }

    // times of -2 are some sort of undocumented behaviour to do with LXSS

    if (fbi->CreationTime.QuadPart == -2)
        fbi->CreationTime.QuadPart = 0;

    if (fbi->LastAccessTime.QuadPart == -2)
        fbi->LastAccessTime.QuadPart = 0;

    if (fbi->LastWriteTime.QuadPart == -2)
        fbi->LastWriteTime.QuadPart = 0;

    if (fbi->ChangeTime.QuadPart == -2)
        fbi->ChangeTime.QuadPart = 0;

    if (fbi->CreationTime.QuadPart == -1)
        ccb->user_set_creation_time = true;
    else if (fbi->CreationTime.QuadPart != 0) {
        FUNC10(fbi->CreationTime, &fcb->inode_item.otime);
        inode_item_changed = true;
        filter |= FILE_NOTIFY_CHANGE_CREATION;

        ccb->user_set_creation_time = true;
    }

    if (fbi->LastAccessTime.QuadPart == -1)
        ccb->user_set_access_time = true;
    else if (fbi->LastAccessTime.QuadPart != 0) {
        FUNC10(fbi->LastAccessTime, &fcb->inode_item.st_atime);
        inode_item_changed = true;
        filter |= FILE_NOTIFY_CHANGE_LAST_ACCESS;

        ccb->user_set_access_time = true;
    }

    if (fbi->LastWriteTime.QuadPart == -1)
        ccb->user_set_write_time = true;
    else if (fbi->LastWriteTime.QuadPart != 0) {
        FUNC10(fbi->LastWriteTime, &fcb->inode_item.st_mtime);
        inode_item_changed = true;
        filter |= FILE_NOTIFY_CHANGE_LAST_WRITE;

        ccb->user_set_write_time = true;
    }

    if (fbi->ChangeTime.QuadPart == -1)
        ccb->user_set_change_time = true;
    else if (fbi->ChangeTime.QuadPart != 0) {
        FUNC10(fbi->ChangeTime, &fcb->inode_item.st_ctime);
        inode_item_changed = true;
        // no filter for this

        ccb->user_set_change_time = true;
    }

    // FileAttributes == 0 means don't set - undocumented, but seen in fastfat
    if (fbi->FileAttributes != 0) {
        LARGE_INTEGER time;
        BTRFS_TIME now;

        fbi->FileAttributes &= ~FILE_ATTRIBUTE_NORMAL;

        defda = FUNC6(Vcb, fcb->subvol, fcb->inode, fcb->type, fileref && fileref->dc && fileref->dc->name.Length >= sizeof(WCHAR) && fileref->dc->name.Buffer[0] == '.',
                                    true, Irp);

        if (fcb->type == BTRFS_TYPE_DIRECTORY)
            fbi->FileAttributes |= FILE_ATTRIBUTE_DIRECTORY;
        else if (fcb->type == BTRFS_TYPE_SYMLINK)
            fbi->FileAttributes |= FILE_ATTRIBUTE_REPARSE_POINT;

        fcb->atts_changed = true;

        if (fcb->atts & FILE_ATTRIBUTE_REPARSE_POINT)
            fbi->FileAttributes |= FILE_ATTRIBUTE_REPARSE_POINT;

        if (defda == fbi->FileAttributes)
            fcb->atts_deleted = true;
        else if (fcb->inode == SUBVOL_ROOT_INODE && (defda | FILE_ATTRIBUTE_READONLY) == (fbi->FileAttributes | FILE_ATTRIBUTE_READONLY))
            fcb->atts_deleted = true;

        fcb->atts = fbi->FileAttributes;

        FUNC3(&time);
        FUNC10(time, &now);

        if (!ccb->user_set_change_time)
            fcb->inode_item.st_ctime = now;

        fcb->subvol->root_item.ctransid = Vcb->superblock.generation;
        fcb->subvol->root_item.ctime = now;

        if (fcb->inode == SUBVOL_ROOT_INODE) {
            if (fbi->FileAttributes & FILE_ATTRIBUTE_READONLY)
                fcb->subvol->root_item.flags |= BTRFS_SUBVOL_READONLY;
            else
                fcb->subvol->root_item.flags &= ~BTRFS_SUBVOL_READONLY;
        }

        inode_item_changed = true;

        filter |= FILE_NOTIFY_CHANGE_ATTRIBUTES;
    }

    if (inode_item_changed) {
        fcb->inode_item.transid = Vcb->superblock.generation;
        fcb->inode_item.sequence++;
        fcb->inode_item_changed = true;

        FUNC8(fcb);
    }

    if (filter != 0)
        FUNC9(fileref, filter, FILE_ACTION_MODIFIED, NULL);

    Status = STATUS_SUCCESS;

end:
    FUNC2(fcb->Header.Resource);

    return Status;
}