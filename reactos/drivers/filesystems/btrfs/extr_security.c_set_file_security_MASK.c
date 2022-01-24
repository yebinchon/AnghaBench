#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_1__* parent; } ;
typedef  TYPE_6__ file_ref ;
struct TYPE_24__ {int /*<<< orphan*/  Resource; } ;
struct TYPE_21__ {int /*<<< orphan*/  sequence; void* st_ctime; int /*<<< orphan*/  transid; } ;
struct TYPE_26__ {int sd_dirty; int sd_deleted; int inode_item_changed; TYPE_5__ Header; TYPE_15__* subvol; TYPE_2__ inode_item; int /*<<< orphan*/ * sd; scalar_t__ ads; } ;
typedef  TYPE_7__ fcb ;
struct TYPE_22__ {int /*<<< orphan*/  generation; } ;
struct TYPE_27__ {TYPE_3__ superblock; scalar_t__ readonly; } ;
typedef  TYPE_8__ device_extension ;
struct TYPE_28__ {int /*<<< orphan*/  user_set_change_time; TYPE_6__* fileref; } ;
typedef  TYPE_9__ ccb ;
struct TYPE_23__ {void* ctime; int /*<<< orphan*/  ctransid; } ;
struct TYPE_20__ {TYPE_7__* fcb; } ;
struct TYPE_19__ {TYPE_4__ root_item; } ;
struct TYPE_18__ {TYPE_9__* FsContext2; TYPE_7__* FsContext; } ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PSECURITY_INFORMATION ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_10__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  void* BTRFS_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ACTION_MODIFIED ; 
 int /*<<< orphan*/  FILE_NOTIFY_CHANGE_SECURITY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_MEDIA_WRITE_PROTECTED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_8__*,TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static NTSTATUS FUNC13(device_extension* Vcb, PFILE_OBJECT FileObject, SECURITY_DESCRIPTOR* sd, PSECURITY_INFORMATION flags, PIRP Irp) {
    NTSTATUS Status;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : NULL;
    SECURITY_DESCRIPTOR* oldsd;
    LARGE_INTEGER time;
    BTRFS_TIME now;

    FUNC8("(%p, %p, %p, %x)\n", Vcb, FileObject, sd, *flags);

    if (Vcb->readonly)
        return STATUS_MEDIA_WRITE_PROTECTED;

    if (fcb->ads) {
        if (fileref && fileref->parent)
            fcb = fileref->parent->fcb;
        else {
            FUNC0("could not find parent fcb for stream\n");
            return STATUS_INTERNAL_ERROR;
        }
    }

    if (!fcb || !ccb)
        return STATUS_INVALID_PARAMETER;

    FUNC1(fcb->Header.Resource, true);

    if (FUNC9(fcb->subvol, Irp)) {
        Status = STATUS_ACCESS_DENIED;
        goto end;
    }

    oldsd = fcb->sd;

    Status = FUNC7(NULL, flags, sd, (void**)&fcb->sd, PagedPool, FUNC4());

    if (!FUNC6(Status)) {
        FUNC0("SeSetSecurityDescriptorInfo returned %08x\n", Status);
        goto end;
    }

    FUNC2(oldsd);

    FUNC5(&time);
    FUNC12(time, &now);

    fcb->inode_item.transid = Vcb->superblock.generation;

    if (!ccb->user_set_change_time)
        fcb->inode_item.st_ctime = now;

    fcb->inode_item.sequence++;

    fcb->sd_dirty = true;
    fcb->sd_deleted = false;
    fcb->inode_item_changed = true;

    fcb->subvol->root_item.ctransid = Vcb->superblock.generation;
    fcb->subvol->root_item.ctime = now;

    FUNC10(fcb);

    FUNC11(fileref, FILE_NOTIFY_CHANGE_SECURITY, FILE_ACTION_MODIFIED, NULL);

end:
    FUNC3(fcb->Header.Resource);

    return Status;
}