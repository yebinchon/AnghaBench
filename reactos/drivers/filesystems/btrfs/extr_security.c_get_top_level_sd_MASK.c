#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sd; TYPE_1__ inode_item; } ;
typedef  TYPE_2__ fcb ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  ACL ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  PagedPool ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC13(fcb* fcb) {
    NTSTATUS Status;
    SECURITY_DESCRIPTOR sd;
    ULONG buflen;
    ACL* acl = NULL;
    PSID usersid = NULL, groupsid = NULL;

    Status = FUNC5(&sd, SECURITY_DESCRIPTOR_REVISION);

    if (!FUNC3(Status)) {
        FUNC0("RtlCreateSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    Status = FUNC12(fcb->inode_item.st_uid, &usersid);
    if (!FUNC3(Status)) {
        FUNC0("uid_to_sid returned %08x\n", Status);
        goto end;
    }

    Status = FUNC8(&sd, usersid, false);

    if (!FUNC3(Status)) {
        FUNC0("RtlSetOwnerSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    FUNC10(fcb->inode_item.st_gid, &groupsid);
    if (!groupsid) {
        FUNC0("out of memory\n");
        goto end;
    }

    Status = FUNC7(&sd, groupsid, false);

    if (!FUNC3(Status)) {
        FUNC0("RtlSetGroupSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    acl = FUNC11();

    if (!acl) {
        FUNC0("out of memory\n");
        goto end;
    }

    Status = FUNC6(&sd, true, acl, false);

    if (!FUNC3(Status)) {
        FUNC0("RtlSetDaclSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    // FIXME - SACL_SECURITY_INFORMATION

    buflen = 0;

    // get sd size
    Status = FUNC4(&sd, NULL, &buflen);
    if (Status != STATUS_SUCCESS && Status != STATUS_BUFFER_TOO_SMALL) {
        FUNC0("RtlAbsoluteToSelfRelativeSD 1 returned %08x\n", Status);
        goto end;
    }

    if (buflen == 0 || Status == STATUS_SUCCESS) {
        FUNC9("RtlAbsoluteToSelfRelativeSD said SD is zero-length\n");
        goto end;
    }

    fcb->sd = FUNC1(PagedPool, buflen, ALLOC_TAG);
    if (!fcb->sd) {
        FUNC0("out of memory\n");
        goto end;
    }

    Status = FUNC4(&sd, fcb->sd, &buflen);

    if (!FUNC3(Status)) {
        FUNC0("RtlAbsoluteToSelfRelativeSD 2 returned %08x\n", Status);
        FUNC2(fcb->sd);
        fcb->sd = NULL;
        goto end;
    }

end:
    if (acl)
        FUNC2(acl);

    if (usersid)
        FUNC2(usersid);

    if (groupsid)
        FUNC2(groupsid);
}