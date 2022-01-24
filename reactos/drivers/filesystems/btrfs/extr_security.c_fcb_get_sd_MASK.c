#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct _fcb {int /*<<< orphan*/  sd; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  sd; TYPE_1__ inode_item; int /*<<< orphan*/  inode; int /*<<< orphan*/  subvol; int /*<<< orphan*/  Vcb; } ;
typedef  TYPE_2__ fcb ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  SECURITY_SUBJECT_CONTEXT ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ BTRFS_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  EA_NTACL ; 
 int /*<<< orphan*/  EA_NTACL_HASH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SEF_DACL_AUTO_INHERIT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

void FUNC12(fcb* fcb, struct _fcb* parent, bool look_for_xattr, PIRP Irp) {
    NTSTATUS Status;
    PSID usersid = NULL, groupsid = NULL;
    SECURITY_SUBJECT_CONTEXT subjcont;
    ULONG buflen;

    if (look_for_xattr && FUNC9(fcb->Vcb, fcb->subvol, fcb->inode, EA_NTACL, EA_NTACL_HASH, (uint8_t**)&fcb->sd, (uint16_t*)&buflen, Irp))
        return;

    if (!parent) {
        FUNC8(fcb);
        return;
    }

    FUNC7(&subjcont);

    Status = FUNC6(parent->sd, NULL, (void**)&fcb->sd, NULL, fcb->type == BTRFS_TYPE_DIRECTORY, SEF_DACL_AUTO_INHERIT,
                                &subjcont, FUNC2(), PagedPool);
    if (!FUNC3(Status)) {
        FUNC0("SeAssignSecurityEx returned %08x\n", Status);
        return;
    }

    Status = FUNC11(fcb->inode_item.st_uid, &usersid);
    if (!FUNC3(Status)) {
        FUNC0("uid_to_sid returned %08x\n", Status);
        return;
    }

    FUNC5(&fcb->sd, usersid, false);

    FUNC10(fcb->inode_item.st_gid, &groupsid);
    if (!groupsid) {
        FUNC0("out of memory\n");
        FUNC1(usersid);
        return;
    }

    FUNC4(&fcb->sd, groupsid, false);

    FUNC1(usersid);
    FUNC1(groupsid);
}