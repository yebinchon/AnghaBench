#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__* item; } ;
typedef  TYPE_2__ traverse_ptr ;
struct TYPE_19__ {int /*<<< orphan*/  chunk_root; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_16__ {int /*<<< orphan*/  dev_id; } ;
struct TYPE_20__ {TYPE_15__ devitem; } ;
typedef  TYPE_4__ device ;
struct TYPE_21__ {int obj_id; int /*<<< orphan*/  offset; int /*<<< orphan*/  obj_type; } ;
struct TYPE_17__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_5__ KEY ;
typedef  int /*<<< orphan*/  DEV_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_15__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TYPE_DEV_ITEM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_5__) ; 

NTSTATUS FUNC9(device_extension* Vcb, device* device, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    DEV_ITEM* di;
    NTSTATUS Status;

    searchkey.obj_id = 1;
    searchkey.obj_type = TYPE_DEV_ITEM;
    searchkey.offset = device->devitem.dev_id;

    Status = FUNC6(Vcb, Vcb->chunk_root, &tp, &searchkey, false, Irp);
    if (!FUNC3(Status)) {
        FUNC0("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (FUNC8(tp.item->key, searchkey)) {
        FUNC0("error - could not find DEV_ITEM for device %I64x\n", device->devitem.dev_id);
        return STATUS_INTERNAL_ERROR;
    }

    Status = FUNC5(Vcb, &tp);
    if (!FUNC3(Status)) {
        FUNC0("delete_tree_item returned %08x\n", Status);
        return Status;
    }

    di = FUNC1(PagedPool, sizeof(DEV_ITEM), ALLOC_TAG);
    if (!di) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(di, &device->devitem, sizeof(DEV_ITEM));

    Status = FUNC7(Vcb, Vcb->chunk_root, 1, TYPE_DEV_ITEM, device->devitem.dev_id, di, sizeof(DEV_ITEM), NULL, Irp);
    if (!FUNC3(Status)) {
        FUNC0("insert_tree_item returned %08x\n", Status);
        FUNC2(di);
        return Status;
    }

    return STATUS_SUCCESS;
}