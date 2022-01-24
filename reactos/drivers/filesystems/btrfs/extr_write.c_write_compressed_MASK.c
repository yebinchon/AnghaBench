#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {int inode_item_changed; TYPE_3__ inode_item; TYPE_2__* Vcb; } ;
typedef  TYPE_4__ fcb ;
struct TYPE_9__ {int /*<<< orphan*/  compress_force; } ;
struct TYPE_10__ {TYPE_1__ options; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_INODE_NOCOMPRESS ; 
 int COMPRESSED_EXTENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC7(fcb* fcb, uint64_t start_data, uint64_t end_data, void* data, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;
    uint64_t i;

    for (i = 0; i < FUNC5(end_data - start_data, COMPRESSED_EXTENT_SIZE) / COMPRESSED_EXTENT_SIZE; i++) {
        uint64_t s2, e2;
        bool compressed;

        s2 = start_data + (i * COMPRESSED_EXTENT_SIZE);
        e2 = FUNC4(s2 + COMPRESSED_EXTENT_SIZE, end_data);

        Status = FUNC6(fcb, s2, e2, (uint8_t*)data + (i * COMPRESSED_EXTENT_SIZE), &compressed, Irp, rollback);

        if (!FUNC1(Status)) {
            FUNC0("write_compressed_bit returned %08x\n", Status);
            return Status;
        }

        // If the first 128 KB of a file is incompressible, we set the nocompress flag so we don't
        // bother with the rest of it.
        if (s2 == 0 && e2 == COMPRESSED_EXTENT_SIZE && !compressed && !fcb->Vcb->options.compress_force) {
            fcb->inode_item.flags |= BTRFS_INODE_NOCOMPRESS;
            fcb->inode_item_changed = true;
            FUNC3(fcb);

            // write subsequent data non-compressed
            if (e2 < end_data) {
                Status = FUNC2(fcb, e2, end_data, (uint8_t*)data + e2, Irp, false, 0, rollback);

                if (!FUNC1(Status)) {
                    FUNC0("do_write_file returned %08x\n", Status);
                    return Status;
                }
            }

            return STATUS_SUCCESS;
        }
    }

    return STATUS_SUCCESS;
}