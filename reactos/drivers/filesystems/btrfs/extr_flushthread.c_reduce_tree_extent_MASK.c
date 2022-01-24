#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_21__ {int tree_id; } ;
struct TYPE_23__ {TYPE_1__ header; scalar_t__ parent; } ;
typedef  TYPE_3__ tree ;
struct TYPE_22__ {int /*<<< orphan*/  node_size; } ;
struct TYPE_24__ {TYPE_2__ superblock; } ;
typedef  TYPE_4__ device_extension ;
struct TYPE_25__ {int /*<<< orphan*/  used; int /*<<< orphan*/  cache_loaded; } ;
typedef  TYPE_5__ chunk ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  LIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int STATUS_INTERNAL_ERROR ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_4__*,int) ; 
 int FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static NTSTATUS FUNC10(device_extension* Vcb, uint64_t address, tree* t, uint64_t parent_root, uint8_t level, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;
    uint64_t rc, root;

    FUNC2("(%p, %I64x, %p)\n", Vcb, address, t);

    rc = FUNC6(Vcb, address, Vcb->superblock.node_size, Irp);
    if (rc == 0) {
        FUNC0("error - refcount for extent %I64x was 0\n", address);
        return STATUS_INTERNAL_ERROR;
    }

    if (!t || t->parent)
        root = parent_root;
    else
        root = t->header.tree_id;

    Status = FUNC4(Vcb, address, Vcb->superblock.node_size, root, level, Irp);
    if (!FUNC1(Status)) {
        FUNC0("decrease_extent_refcount_tree returned %08x\n", Status);
        return Status;
    }

    if (rc == 1) {
        chunk* c = FUNC5(Vcb, address);

        if (c) {
            FUNC3(c, Vcb);

            if (!c->cache_loaded) {
                Status = FUNC7(Vcb, c, NULL);

                if (!FUNC1(Status)) {
                    FUNC0("load_cache_chunk returned %08x\n", Status);
                    FUNC8(c, Vcb);
                    return Status;
                }
            }

            c->used -= Vcb->superblock.node_size;

            FUNC9(c, address, Vcb->superblock.node_size, rollback);

            FUNC8(c, Vcb);
        } else
            FUNC0("could not find chunk for address %I64x\n", address);
    }

    return STATUS_SUCCESS;
}