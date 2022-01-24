#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
struct TYPE_26__ {int level; } ;
struct TYPE_28__ {TYPE_2__ header; } ;
typedef  TYPE_4__ tree ;
struct TYPE_29__ {TYPE_3__* item; } ;
typedef  TYPE_5__ traverse_ptr ;
struct TYPE_25__ {int incompat_flags; } ;
struct TYPE_30__ {int /*<<< orphan*/  extent_root; TYPE_1__ superblock; } ;
typedef  TYPE_6__ device_extension ;
struct TYPE_32__ {int /*<<< orphan*/  level; } ;
struct TYPE_31__ {scalar_t__ obj_id; scalar_t__ obj_type; int offset; } ;
struct TYPE_24__ {scalar_t__ obj_id; scalar_t__ obj_type; int /*<<< orphan*/  offset; } ;
struct TYPE_27__ {int size; TYPE_12__ key; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  void* NTSTATUS ;
typedef  TYPE_7__ KEY ;
typedef  TYPE_8__ EXTENT_ITEM_TREE ;
typedef  TYPE_8__ EXTENT_ITEM_SKINNY_METADATA ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 void* STATUS_INSUFFICIENT_RESOURCES ; 
 void* STATUS_INTERNAL_ERROR ; 
 void* STATUS_SUCCESS ; 
 scalar_t__ TYPE_EXTENT_ITEM ; 
 scalar_t__ TYPE_METADATA_ITEM ; 
 void* FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 void* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,TYPE_8__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__,TYPE_7__) ; 

__attribute__((used)) static NTSTATUS FUNC9(device_extension* Vcb, uint64_t address, tree* t, uint8_t level, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;

    if (Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA) {
        searchkey.obj_id = address;
        searchkey.obj_type = TYPE_METADATA_ITEM;
        searchkey.offset = t->header.level;

        Status = FUNC6(Vcb, Vcb->extent_root, &tp, &searchkey, false, Irp);
        if (!FUNC3(Status)) {
            FUNC0("error - find_item returned %08x\n", Status);
            return Status;
        }

        if (!FUNC8(tp.item->key, searchkey)) {
            EXTENT_ITEM_SKINNY_METADATA* eism;

            if (tp.item->size > 0) {
                eism = FUNC1(PagedPool, tp.item->size, ALLOC_TAG);

                if (!eism) {
                    FUNC0("out of memory\n");
                    return STATUS_INSUFFICIENT_RESOURCES;
                }

                FUNC4(eism, tp.item->data, tp.item->size);
            } else
                eism = NULL;

            Status = FUNC5(Vcb, &tp);
            if (!FUNC3(Status)) {
                FUNC0("delete_tree_item returned %08x\n", Status);
                if (eism) FUNC2(eism);
                return Status;
            }

            Status = FUNC7(Vcb, Vcb->extent_root, address, TYPE_METADATA_ITEM, level, eism, tp.item->size, NULL, Irp);
            if (!FUNC3(Status)) {
                FUNC0("insert_tree_item returned %08x\n", Status);
                if (eism) FUNC2(eism);
                return Status;
            }

            return STATUS_SUCCESS;
        }
    }

    searchkey.obj_id = address;
    searchkey.obj_type = TYPE_EXTENT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = FUNC6(Vcb, Vcb->extent_root, &tp, &searchkey, false, Irp);
    if (!FUNC3(Status)) {
        FUNC0("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (tp.item->key.obj_id == searchkey.obj_id && tp.item->key.obj_type == searchkey.obj_type) {
        EXTENT_ITEM_TREE* eit;

        if (tp.item->size < sizeof(EXTENT_ITEM_TREE)) {
            FUNC0("(%I64x,%x,%I64x) was %u bytes, expected at least %u\n", tp.item->key.obj_id, tp.item->key.obj_type, tp.item->key.offset, tp.item->size, sizeof(EXTENT_ITEM_TREE));
            return STATUS_INTERNAL_ERROR;
        }

        eit = FUNC1(PagedPool, tp.item->size, ALLOC_TAG);

        if (!eit) {
            FUNC0("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        FUNC4(eit, tp.item->data, tp.item->size);

        Status = FUNC5(Vcb, &tp);
        if (!FUNC3(Status)) {
            FUNC0("delete_tree_item returned %08x\n", Status);
            FUNC2(eit);
            return Status;
        }

        eit->level = level;

        Status = FUNC7(Vcb, Vcb->extent_root, tp.item->key.obj_id, tp.item->key.obj_type, tp.item->key.offset, eit, tp.item->size, NULL, Irp);
        if (!FUNC3(Status)) {
            FUNC0("insert_tree_item returned %08x\n", Status);
            FUNC2(eit);
            return Status;
        }

        return STATUS_SUCCESS;
    }

    FUNC0("could not find EXTENT_ITEM for address %I64x\n", address);

    return STATUS_INTERNAL_ERROR;
}