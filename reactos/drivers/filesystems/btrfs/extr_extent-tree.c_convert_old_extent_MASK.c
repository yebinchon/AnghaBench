#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_21__ {TYPE_2__* item; } ;
typedef  TYPE_3__ traverse_ptr ;
struct TYPE_22__ {int /*<<< orphan*/  extent_root; } ;
typedef  TYPE_4__ device_extension ;
struct TYPE_24__ {int /*<<< orphan*/  count; int /*<<< orphan*/  root; } ;
struct TYPE_23__ {scalar_t__ obj_id; scalar_t__ obj_type; int offset; } ;
struct TYPE_19__ {scalar_t__ obj_id; scalar_t__ obj_type; scalar_t__ offset; } ;
struct TYPE_20__ {int size; TYPE_1__ key; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LIST_ENTRY ;
typedef  TYPE_5__ KEY ;
typedef  TYPE_6__ EXTENT_REF_V0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EXTENT_ITEM_DATA ; 
 int EXTENT_ITEM_SHARED_BACKREFS ; 
 int EXTENT_ITEM_TREE_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ STATUS_INTERNAL_ERROR ; 
 scalar_t__ TYPE_EXTENT_ITEM ; 
 scalar_t__ TYPE_EXTENT_REF_V0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static NTSTATUS FUNC11(device_extension* Vcb, uint64_t address, bool tree, KEY* firstitem, uint8_t level, PIRP Irp) {
    NTSTATUS Status;
    KEY searchkey;
    traverse_ptr tp, next_tp;
    LIST_ENTRY extent_refs;
    uint64_t size;

    FUNC1(&extent_refs);

    searchkey.obj_id = address;
    searchkey.obj_type = TYPE_EXTENT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = FUNC8(Vcb, Vcb->extent_root, &tp, &searchkey, false, Irp);
    if (!FUNC2(Status)) {
        FUNC0("find_item returned %08x\n", Status);
        return Status;
    }

    if (tp.item->key.obj_id != searchkey.obj_id || tp.item->key.obj_type != searchkey.obj_type) {
        FUNC0("old-style extent %I64x not found\n", address);
        return STATUS_INTERNAL_ERROR;
    }

    size = tp.item->key.offset;

    Status = FUNC7(Vcb, &tp);
    if (!FUNC2(Status)) {
        FUNC0("delete_tree_item returned %08x\n", Status);
        return Status;
    }

    while (FUNC9(Vcb, &tp, &next_tp, false, Irp)) {
        tp = next_tp;

        if (tp.item->key.obj_id == address && tp.item->key.obj_type == TYPE_EXTENT_REF_V0 && tp.item->size >= sizeof(EXTENT_REF_V0)) {
            EXTENT_REF_V0* erv0 = (EXTENT_REF_V0*)tp.item->data;

            if (tree) {
                if (tp.item->key.offset == tp.item->key.obj_id) { // top of the tree
                    Status = FUNC5(&extent_refs, erv0->root);
                    if (!FUNC2(Status)) {
                        FUNC0("add_tree_block_extent_ref returned %08x\n", Status);
                        goto end;
                    }
                } else {
                    Status = FUNC3(&extent_refs, tp.item->key.offset);
                    if (!FUNC2(Status)) {
                        FUNC0("add_shared_block_extent_ref returned %08x\n", Status);
                        goto end;
                    }
                }
            } else {
                Status = FUNC4(&extent_refs, tp.item->key.offset, erv0->count);
                if (!FUNC2(Status)) {
                    FUNC0("add_shared_data_extent_ref returned %08x\n", Status);
                    goto end;
                }
            }

            Status = FUNC7(Vcb, &tp);
            if (!FUNC2(Status)) {
                FUNC0("delete_tree_item returned %08x\n", Status);
                goto end;
            }
        }

        if (tp.item->key.obj_id > address || tp.item->key.obj_type > TYPE_EXTENT_REF_V0)
            break;
    }

    Status = FUNC6(Vcb, address, size, tree ? (EXTENT_ITEM_TREE_BLOCK | EXTENT_ITEM_SHARED_BACKREFS) : EXTENT_ITEM_DATA,
                                   &extent_refs, firstitem, level, Irp);
    if (!FUNC2(Status))
        FUNC0("construct_extent_item returned %08x\n", Status);

end:
    FUNC10(&extent_refs);

    return Status;
}