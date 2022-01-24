#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ level; size_t num_items; int /*<<< orphan*/  tree_id; } ;
typedef  TYPE_2__ tree_header ;
struct TYPE_12__ {scalar_t__ address; int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ internal_node ;
struct TYPE_10__ {int /*<<< orphan*/  node_size; } ;
struct TYPE_13__ {TYPE_1__ superblock; } ;
typedef  TYPE_4__ device_extension ;
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NormalPagePriority ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(device_extension* Vcb, uint64_t offset, uint64_t address, uint64_t devid) {
    tree_header* tree;
    NTSTATUS Status;
    internal_node* in;
    ULONG i;

    tree = FUNC1(PagedPool, Vcb->superblock.node_size, ALLOC_TAG);
    if (!tree) {
        FUNC0("out of memory\n");
        return;
    }

    Status = FUNC5(Vcb, offset, Vcb->superblock.node_size, NULL, true, (uint8_t*)tree, NULL, NULL, NULL, 0, false, NormalPagePriority);
    if (!FUNC3(Status)) {
        FUNC0("read_data returned %08x\n", Status);
        goto end;
    }

    if (tree->level == 0) {
        FUNC0("tree level was 0\n");
        goto end;
    }

    in = (internal_node*)&tree[1];

    for (i = 0; i < tree->num_items; i++) {
        if (in[i].address == address) {
            FUNC4(Vcb, address, devid, tree->tree_id, tree->level - 1, &in[i].key);
            break;
        }
    }

end:
    FUNC2(tree);
}