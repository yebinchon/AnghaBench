#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int st_mode; int /*<<< orphan*/  st_gid; } ;
struct _fcb {TYPE_1__ inode_item; } ;
typedef  size_t ULONG ;
struct TYPE_12__ {int /*<<< orphan*/  PrimaryToken; } ;
struct TYPE_11__ {size_t GroupCount; TYPE_2__* Groups; int /*<<< orphan*/  PrimaryGroup; int /*<<< orphan*/  Owner; } ;
struct TYPE_10__ {int /*<<< orphan*/  Sid; } ;
typedef  TYPE_3__ TOKEN_PRIMARY_GROUP ;
typedef  TYPE_3__ TOKEN_OWNER ;
typedef  TYPE_3__ TOKEN_GROUPS ;
typedef  TYPE_6__* PSECURITY_SUBJECT_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  TokenGroups ; 
 int /*<<< orphan*/  TokenOwner ; 
 int /*<<< orphan*/  TokenPrimaryGroup ; 
 int /*<<< orphan*/  gid_map_list ; 
 int /*<<< orphan*/  mapping_lock ; 
 scalar_t__ FUNC7 (struct _fcb*,int /*<<< orphan*/ ) ; 

void FUNC8(struct _fcb* fcb, struct _fcb* parfcb, PSECURITY_SUBJECT_CONTEXT subjcont) {
    NTSTATUS Status;
    TOKEN_OWNER* to;
    TOKEN_PRIMARY_GROUP* tpg;
    TOKEN_GROUPS* tg;

    if (parfcb && parfcb->inode_item.st_mode & S_ISGID) {
        fcb->inode_item.st_gid = parfcb->inode_item.st_gid;
        return;
    }

    FUNC1(&mapping_lock, true);

    if (!subjcont || !subjcont->PrimaryToken || FUNC4(&gid_map_list)) {
        FUNC3(&mapping_lock);
        return;
    }

    Status = FUNC6(subjcont->PrimaryToken, TokenOwner, (void**)&to);
    if (!FUNC5(Status))
        FUNC0("SeQueryInformationToken returned %08x\n", Status);
    else {
        if (FUNC7(fcb, to->Owner)) {
            FUNC3(&mapping_lock);
            FUNC2(to);
            return;
        }

        FUNC2(to);
    }

    Status = FUNC6(subjcont->PrimaryToken, TokenPrimaryGroup, (void**)&tpg);
    if (!FUNC5(Status))
        FUNC0("SeQueryInformationToken returned %08x\n", Status);
    else {
        if (FUNC7(fcb, tpg->PrimaryGroup)) {
            FUNC3(&mapping_lock);
            FUNC2(tpg);
            return;
        }

        FUNC2(tpg);
    }

    Status = FUNC6(subjcont->PrimaryToken, TokenGroups, (void**)&tg);
    if (!FUNC5(Status))
        FUNC0("SeQueryInformationToken returned %08x\n", Status);
    else {
        ULONG i;

        for (i = 0; i < tg->GroupCount; i++) {
            if (FUNC7(fcb, tg->Groups[i].Sid)) {
                FUNC3(&mapping_lock);
                FUNC2(tg);
                return;
            }
        }

        FUNC2(tg);
    }

    FUNC3(&mapping_lock);
}