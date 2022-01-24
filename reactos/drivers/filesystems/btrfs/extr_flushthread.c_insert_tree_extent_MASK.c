#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_23__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_5__ traverse_ptr ;
struct TYPE_22__ {int incompat_flags; int /*<<< orphan*/  node_size; int /*<<< orphan*/  generation; } ;
struct TYPE_24__ {TYPE_4__ superblock; int /*<<< orphan*/  extent_root; } ;
typedef  TYPE_6__ device_extension ;
typedef  int /*<<< orphan*/  chunk ;
struct TYPE_21__ {int /*<<< orphan*/  offset; } ;
struct TYPE_19__ {int refcount; int /*<<< orphan*/  flags; int /*<<< orphan*/  generation; } ;
struct TYPE_20__ {int /*<<< orphan*/  level; TYPE_1__ extent_item; } ;
struct TYPE_25__ {TYPE_3__ tbr; int /*<<< orphan*/  type; TYPE_2__ eit; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LIST_ENTRY ;
typedef  TYPE_7__ EXTENT_ITEM_TREE2 ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EXTENT_ITEM_TREE_BLOCK ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TYPE_EXTENT_ITEM ; 
 int /*<<< orphan*/  TYPE_TREE_BLOCK_REF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(device_extension* Vcb, uint8_t level, uint64_t root_id, chunk* c, uint64_t* new_address, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;
    uint64_t address;
    EXTENT_ITEM_TREE2* eit2;
    traverse_ptr insert_tp;

    FUNC4("(%p, %x, %I64x, %p, %p, %p, %p)\n", Vcb, level, root_id, c, new_address, rollback);

    if (!FUNC7(Vcb, c, &address))
        return false;

    if (Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA) {
        bool b = FUNC8(Vcb, level, root_id, c, address, Irp, rollback);

        if (b)
            *new_address = address;

        return b;
    }

    eit2 = FUNC1(PagedPool, sizeof(EXTENT_ITEM_TREE2), ALLOC_TAG);
    if (!eit2) {
        FUNC0("out of memory\n");
        return false;
    }

    eit2->eit.extent_item.refcount = 1;
    eit2->eit.extent_item.generation = Vcb->superblock.generation;
    eit2->eit.extent_item.flags = EXTENT_ITEM_TREE_BLOCK;
    eit2->eit.level = level;
    eit2->type = TYPE_TREE_BLOCK_REF;
    eit2->tbr.offset = root_id;

    Status = FUNC9(Vcb, Vcb->extent_root, address, TYPE_EXTENT_ITEM, Vcb->superblock.node_size, eit2, sizeof(EXTENT_ITEM_TREE2), &insert_tp, Irp);
    if (!FUNC3(Status)) {
        FUNC0("insert_tree_item returned %08x\n", Status);
        FUNC2(eit2);
        return false;
    }

    FUNC5(c, Vcb);

    FUNC11(c, false, address, Vcb->superblock.node_size, rollback);

    FUNC10(c, Vcb);

    FUNC6(insert_tp.tree);

    *new_address = address;

    return true;
}