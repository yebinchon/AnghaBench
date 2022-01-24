#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {TYPE_3__* item; } ;
typedef  TYPE_4__ traverse_ptr ;
struct TYPE_12__ {int incompat_flags; } ;
struct TYPE_16__ {TYPE_1__ superblock; int /*<<< orphan*/  extent_root; } ;
typedef  TYPE_5__ device_extension ;
struct TYPE_18__ {scalar_t__ flags; } ;
struct TYPE_17__ {int offset; scalar_t__ obj_type; scalar_t__ obj_id; } ;
struct TYPE_13__ {scalar_t__ obj_id; scalar_t__ obj_type; int /*<<< orphan*/  offset; } ;
struct TYPE_14__ {int size; scalar_t__ data; TYPE_2__ key; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_6__ KEY ;
typedef  int /*<<< orphan*/  EXTENT_ITEM_V0 ;
typedef  TYPE_7__ EXTENT_ITEM ;

/* Variables and functions */
 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_EXTENT_ITEM ; 
 scalar_t__ TYPE_METADATA_ITEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_6__*,int,int /*<<< orphan*/ ) ; 

uint64_t FUNC3(device_extension* Vcb, uint64_t address, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;
    EXTENT_ITEM* ei;

    searchkey.obj_id = address;
    searchkey.obj_type = Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ? TYPE_METADATA_ITEM : TYPE_EXTENT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = FUNC2(Vcb, Vcb->extent_root, &tp, &searchkey, false, Irp);
    if (!FUNC1(Status)) {
        FUNC0("error - find_item returned %08x\n", Status);
        return 0;
    }

    if (Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA && tp.item->key.obj_id == address &&
        tp.item->key.obj_type == TYPE_METADATA_ITEM && tp.item->size >= sizeof(EXTENT_ITEM)) {
        ei = (EXTENT_ITEM*)tp.item->data;

        return ei->flags;
    }

    if (tp.item->key.obj_id != address || tp.item->key.obj_type != TYPE_EXTENT_ITEM) {
        FUNC0("couldn't find %I64x in extent tree\n", address);
        return 0;
    }

    if (tp.item->size == sizeof(EXTENT_ITEM_V0))
        return 0;
    else if (tp.item->size < sizeof(EXTENT_ITEM)) {
        FUNC0("(%I64x,%x,%I64x) was %x bytes, expected at least %x\n", tp.item->key.obj_id, tp.item->key.obj_type,
                                                                   tp.item->key.offset, tp.item->size, sizeof(EXTENT_ITEM));
        return 0;
    }

    ei = (EXTENT_ITEM*)tp.item->data;

    return ei->flags;
}