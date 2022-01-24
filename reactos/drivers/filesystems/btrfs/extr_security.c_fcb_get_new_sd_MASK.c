#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_6__* fcb; } ;
typedef  TYPE_2__ file_ref ;
struct TYPE_10__ {int /*<<< orphan*/  st_uid; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ inode_item; int /*<<< orphan*/  sd; } ;
typedef  TYPE_3__ fcb ;
struct TYPE_14__ {int /*<<< orphan*/ * sd; } ;
struct TYPE_13__ {int /*<<< orphan*/  SubjectSecurityContext; int /*<<< orphan*/  SecurityDescriptor; } ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  TYPE_4__ ACCESS_STATE ;

/* Variables and functions */
 scalar_t__ BTRFS_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEF_SACL_AUTO_INHERIT ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_NOBODY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC7(fcb* fcb, file_ref* parfileref, ACCESS_STATE* as) {
    NTSTATUS Status;
    PSID owner;
    BOOLEAN defaulted;

    Status = FUNC4(parfileref ? parfileref->fcb->sd : NULL, as->SecurityDescriptor, (void**)&fcb->sd, NULL, fcb->type == BTRFS_TYPE_DIRECTORY,
                                SEF_SACL_AUTO_INHERIT, &as->SubjectSecurityContext, FUNC1(), PagedPool);

    if (!FUNC2(Status)) {
        FUNC0("SeAssignSecurityEx returned %08x\n", Status);
        return Status;
    }

    Status = FUNC3(fcb->sd, &owner, &defaulted);
    if (!FUNC2(Status)) {
        FUNC0("RtlGetOwnerSecurityDescriptor returned %08x\n", Status);
        fcb->inode_item.st_uid = UID_NOBODY;
    } else {
        fcb->inode_item.st_uid = FUNC6(owner);
    }

    FUNC5(fcb, parfileref ? parfileref->fcb : NULL, &as->SubjectSecurityContext);

    return STATUS_SUCCESS;
}