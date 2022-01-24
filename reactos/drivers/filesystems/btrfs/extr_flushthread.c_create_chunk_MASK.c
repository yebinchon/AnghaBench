#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_24__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_15__ ;
typedef  struct TYPE_27__   TYPE_13__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_34__ {int /*<<< orphan*/  bytes_used; } ;
struct TYPE_35__ {TYPE_5__ superblock; TYPE_15__* dev_root; TYPE_15__* chunk_root; TYPE_15__* extent_root; } ;
typedef  TYPE_6__ device_extension ;
struct TYPE_36__ {int size; int offset; int created; int /*<<< orphan*/  used; int /*<<< orphan*/  oldused; TYPE_13__** devices; TYPE_24__* chunk_item; } ;
typedef  TYPE_7__ chunk ;
struct TYPE_38__ {int offset; } ;
struct TYPE_37__ {int chunk_tree; int flags; int objid; int address; size_t length; int /*<<< orphan*/  chunktree_uuid; int /*<<< orphan*/  chunktree; int /*<<< orphan*/  used; } ;
struct TYPE_33__ {int dev_id; } ;
struct TYPE_32__ {TYPE_2__* tree; } ;
struct TYPE_29__ {int /*<<< orphan*/  chunk_tree_uuid; } ;
struct TYPE_31__ {TYPE_1__ header; } ;
struct TYPE_30__ {int type; int size; size_t num_stripes; size_t sub_stripes; } ;
struct TYPE_28__ {TYPE_3__ treeholder; int /*<<< orphan*/  id; } ;
struct TYPE_27__ {TYPE_4__ devitem; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_8__ DEV_EXTENT ;
typedef  TYPE_9__ CHUNK_ITEM_STRIPE ;
typedef  TYPE_8__ CHUNK_ITEM ;
typedef  TYPE_8__ BLOCK_GROUP_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int BLOCK_FLAG_RAID0 ; 
 int BLOCK_FLAG_RAID10 ; 
 int BLOCK_FLAG_RAID5 ; 
 int BLOCK_FLAG_RAID6 ; 
 int BLOCK_FLAG_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_24__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TYPE_BLOCK_GROUP_ITEM ; 
 int /*<<< orphan*/  TYPE_CHUNK_ITEM ; 
 int /*<<< orphan*/  TYPE_DEV_EXTENT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int,int /*<<< orphan*/ ,int,TYPE_8__*,int) ; 
 scalar_t__ FUNC6 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_15__*,int,int /*<<< orphan*/ ,int,TYPE_8__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_13__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC9(device_extension* Vcb, chunk* c, PIRP Irp) {
    CHUNK_ITEM* ci;
    CHUNK_ITEM_STRIPE* cis;
    BLOCK_GROUP_ITEM* bgi;
    uint16_t i, factor;
    NTSTATUS Status;

    ci = FUNC1(PagedPool, c->size, ALLOC_TAG);
    if (!ci) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(ci, c->chunk_item, c->size);

    Status = FUNC7(Vcb, Vcb->chunk_root, 0x100, TYPE_CHUNK_ITEM, c->offset, ci, c->size, NULL, Irp);
    if (!FUNC3(Status)) {
        FUNC0("insert_tree_item failed\n");
        FUNC2(ci);
        return Status;
    }

    if (c->chunk_item->type & BLOCK_FLAG_SYSTEM) {
        Status = FUNC5(Vcb, 0x100, TYPE_CHUNK_ITEM, c->offset, ci, c->size);
        if (!FUNC3(Status)) {
            FUNC0("add_to_bootstrap returned %08x\n", Status);
            return Status;
        }
    }

    // add BLOCK_GROUP_ITEM to tree 2

    bgi = FUNC1(PagedPool, sizeof(BLOCK_GROUP_ITEM), ALLOC_TAG);
    if (!bgi) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    bgi->used = c->used;
    bgi->chunk_tree = 0x100;
    bgi->flags = c->chunk_item->type;

    Status = FUNC7(Vcb, Vcb->extent_root, c->offset, TYPE_BLOCK_GROUP_ITEM, c->chunk_item->size, bgi, sizeof(BLOCK_GROUP_ITEM), NULL, Irp);
    if (!FUNC3(Status)) {
        FUNC0("insert_tree_item failed\n");
        FUNC2(bgi);
        return Status;
    }

    if (c->chunk_item->type & BLOCK_FLAG_RAID0)
        factor = c->chunk_item->num_stripes;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID10)
        factor = c->chunk_item->num_stripes / c->chunk_item->sub_stripes;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID5)
        factor = c->chunk_item->num_stripes - 1;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID6)
        factor = c->chunk_item->num_stripes - 2;
    else // SINGLE, DUPLICATE, RAID1
        factor = 1;

    // add DEV_EXTENTs to tree 4

    cis = (CHUNK_ITEM_STRIPE*)&c->chunk_item[1];

    for (i = 0; i < c->chunk_item->num_stripes; i++) {
        DEV_EXTENT* de;

        de = FUNC1(PagedPool, sizeof(DEV_EXTENT), ALLOC_TAG);
        if (!de) {
            FUNC0("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        de->chunktree = Vcb->chunk_root->id;
        de->objid = 0x100;
        de->address = c->offset;
        de->length = c->chunk_item->size / factor;
        de->chunktree_uuid = Vcb->chunk_root->treeholder.tree->header.chunk_tree_uuid;

        Status = FUNC7(Vcb, Vcb->dev_root, c->devices[i]->devitem.dev_id, TYPE_DEV_EXTENT, cis[i].offset, de, sizeof(DEV_EXTENT), NULL, Irp);
        if (!FUNC3(Status)) {
            FUNC0("insert_tree_item returned %08x\n", Status);
            FUNC2(de);
            return Status;
        }

        // FIXME - no point in calling this twice for the same device
        Status = FUNC8(Vcb, c->devices[i], Irp);
        if (!FUNC3(Status)) {
            FUNC0("update_dev_item returned %08x\n", Status);
            return Status;
        }
    }

    c->created = false;
    c->oldused = c->used;

    Vcb->superblock.bytes_used += FUNC6(Vcb, c, c->used);

    return STATUS_SUCCESS;
}