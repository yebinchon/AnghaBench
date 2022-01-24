#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_18__ {TYPE_1__* item; } ;
typedef  TYPE_3__ traverse_ptr ;
struct TYPE_19__ {int /*<<< orphan*/  dev_root; } ;
typedef  TYPE_4__ device_extension ;
struct TYPE_17__ {int /*<<< orphan*/  dev_id; } ;
struct TYPE_20__ {TYPE_2__ devitem; int /*<<< orphan*/  stats; } ;
typedef  TYPE_5__ device ;
struct TYPE_21__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  obj_type; scalar_t__ obj_id; } ;
struct TYPE_16__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_6__ KEY ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TYPE_DEV_STATS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__) ; 

__attribute__((used)) static NTSTATUS FUNC9(device_extension* Vcb, device* dev, PIRP Irp) {
    NTSTATUS Status;
    KEY searchkey;
    traverse_ptr tp;
    uint16_t statslen;
    uint64_t* stats;

    searchkey.obj_id = 0;
    searchkey.obj_type = TYPE_DEV_STATS;
    searchkey.offset = dev->devitem.dev_id;

    Status = FUNC6(Vcb, Vcb->dev_root, &tp, &searchkey, false, Irp);
    if (!FUNC3(Status)) {
        FUNC0("find_item returned %08x\n", Status);
        return Status;
    }

    if (!FUNC8(tp.item->key, searchkey)) {
        Status = FUNC5(Vcb, &tp);
        if (!FUNC3(Status)) {
            FUNC0("delete_tree_item returned %08x\n", Status);
            return Status;
        }
    }

    statslen = sizeof(uint64_t) * 5;
    stats = FUNC1(PagedPool, statslen, ALLOC_TAG);
    if (!stats) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(stats, dev->stats, statslen);

    Status = FUNC7(Vcb, Vcb->dev_root, 0, TYPE_DEV_STATS, dev->devitem.dev_id, stats, statslen, NULL, Irp);
    if (!FUNC3(Status)) {
        FUNC0("insert_tree_item returned %08x\n", Status);
        FUNC2(stats);
        return Status;
    }

    return STATUS_SUCCESS;
}