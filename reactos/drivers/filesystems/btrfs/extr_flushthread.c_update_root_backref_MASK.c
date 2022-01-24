#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_14__ {TYPE_1__* item; } ;
typedef  TYPE_2__ traverse_ptr ;
struct TYPE_15__ {int /*<<< orphan*/  root_root; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_16__ {void* offset; int /*<<< orphan*/  obj_type; void* obj_id; } ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  key; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_4__ KEY ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TYPE_ROOT_BACKREF ; 
 int /*<<< orphan*/  TYPE_ROOT_REF ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__) ; 

__attribute__((used)) static NTSTATUS FUNC9(device_extension* Vcb, uint64_t subvolid, uint64_t parsubvolid, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    uint8_t* data;
    uint16_t datalen;
    NTSTATUS Status;

    searchkey.obj_id = parsubvolid;
    searchkey.obj_type = TYPE_ROOT_REF;
    searchkey.offset = subvolid;

    Status = FUNC6(Vcb, Vcb->root_root, &tp, &searchkey, false, Irp);
    if (!FUNC3(Status)) {
        FUNC0("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (!FUNC8(tp.item->key, searchkey) && tp.item->size > 0) {
        datalen = tp.item->size;

        data = FUNC1(PagedPool, datalen, ALLOC_TAG);
        if (!data) {
            FUNC0("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        FUNC4(data, tp.item->data, datalen);
    } else {
        datalen = 0;
        data = NULL;
    }

    searchkey.obj_id = subvolid;
    searchkey.obj_type = TYPE_ROOT_BACKREF;
    searchkey.offset = parsubvolid;

    Status = FUNC6(Vcb, Vcb->root_root, &tp, &searchkey, false, Irp);
    if (!FUNC3(Status)) {
        FUNC0("error - find_item returned %08x\n", Status);

        if (datalen > 0)
            FUNC2(data);

        return Status;
    }

    if (!FUNC8(tp.item->key, searchkey)) {
        Status = FUNC5(Vcb, &tp);
        if (!FUNC3(Status)) {
            FUNC0("delete_tree_item returned %08x\n", Status);

            if (datalen > 0)
                FUNC2(data);

            return Status;
        }
    }

    if (datalen > 0) {
        Status = FUNC7(Vcb, Vcb->root_root, subvolid, TYPE_ROOT_BACKREF, parsubvolid, data, datalen, NULL, Irp);
        if (!FUNC3(Status)) {
            FUNC0("insert_tree_item returned %08x\n", Status);
            FUNC2(data);
            return Status;
        }
    }

    return STATUS_SUCCESS;
}