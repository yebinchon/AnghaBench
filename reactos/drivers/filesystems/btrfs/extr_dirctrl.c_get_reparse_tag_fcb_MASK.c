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
struct TYPE_5__ {int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ reparse_xattr; } ;
typedef  TYPE_2__ fcb ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ BTRFS_TYPE_DIRECTORY ; 
 scalar_t__ BTRFS_TYPE_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IO_REPARSE_TAG_SYMLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ULONG FUNC4(fcb* fcb) {
    ULONG tag;

    if (fcb->type == BTRFS_TYPE_SYMLINK)
        return IO_REPARSE_TAG_SYMLINK;
    else if (fcb->type == BTRFS_TYPE_DIRECTORY) {
        if (!fcb->reparse_xattr.Buffer || fcb->reparse_xattr.Length < sizeof(ULONG))
            return 0;

        FUNC2(&tag, fcb->reparse_xattr.Buffer, sizeof(ULONG));
    } else {
        NTSTATUS Status;
        ULONG br;

        Status = FUNC3(fcb, (uint8_t*)&tag, 0, sizeof(ULONG), &br, NULL);
        if (!FUNC1(Status)) {
            FUNC0("read_file returned %08x\n", Status);
            return 0;
        }
    }

    return tag;
}