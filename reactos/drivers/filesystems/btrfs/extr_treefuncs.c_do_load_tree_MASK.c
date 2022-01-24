#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_22__ {TYPE_4__* tree; int /*<<< orphan*/  generation; int /*<<< orphan*/  address; } ;
typedef  TYPE_5__ tree_holder ;
typedef  int /*<<< orphan*/  tree_data ;
struct TYPE_23__ {TYPE_2__* nonpaged; } ;
typedef  TYPE_6__ tree ;
struct TYPE_24__ {TYPE_3__* nonpaged; } ;
typedef  TYPE_7__ root ;
struct TYPE_18__ {int /*<<< orphan*/  node_size; } ;
struct TYPE_25__ {TYPE_1__ superblock; } ;
typedef  TYPE_8__ device_extension ;
typedef  int /*<<< orphan*/  chunk ;
struct TYPE_21__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_20__ {int /*<<< orphan*/  load_tree_lock; } ;
struct TYPE_19__ {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NormalPagePriority ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ *,TYPE_7__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC10(device_extension* Vcb, tree_holder* th, root* r, tree* t, tree_data* td, PIRP Irp) {
    NTSTATUS Status;
    uint8_t* buf;
    chunk* c;

    buf = FUNC3(PagedPool, Vcb->superblock.node_size, ALLOC_TAG);
    if (!buf) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC9(Vcb, th->address, Vcb->superblock.node_size, NULL, true, buf, NULL,
                       &c, Irp, th->generation, false, NormalPagePriority);
    if (!FUNC7(Status)) {
        FUNC0("read_data returned 0x%08x\n", Status);
        FUNC4(buf);
        return Status;
    }

    if (t)
        FUNC1(&t->nonpaged->mutex);
    else
        FUNC2(&r->nonpaged->load_tree_lock, true);

    Status = FUNC8(Vcb, th, buf, r, t, td);

    if (t)
        FUNC5(&t->nonpaged->mutex);
    else
        FUNC6(&r->nonpaged->load_tree_lock);

    if (!th->tree || th->tree->buf != buf)
        FUNC4(buf);

    if (!FUNC7(Status)) {
        FUNC0("do_load_tree2 returned %08x\n", Status);
        return Status;
    }

    return Status;
}