#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/ * item; scalar_t__ tree; } ;
typedef  TYPE_1__ traverse_ptr ;
struct TYPE_10__ {scalar_t__ tree; } ;
struct TYPE_9__ {TYPE_6__ treeholder; } ;
typedef  TYPE_2__ root ;
typedef  int /*<<< orphan*/  device_extension ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STATUS_NOT_FOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC4(device_extension* Vcb, root* r, traverse_ptr* tp, const KEY* searchkey, bool ignore, uint8_t level, PIRP Irp) {
    NTSTATUS Status;

    if (!r->treeholder.tree) {
        Status = FUNC2(Vcb, &r->treeholder, r, NULL, NULL, Irp);
        if (!FUNC1(Status)) {
            FUNC0("do_load_tree returned %08x\n", Status);
            return Status;
        }
    }

    Status = FUNC3(Vcb, r->treeholder.tree, tp, searchkey, ignore, level, Irp);
    if (!FUNC1(Status) && Status != STATUS_NOT_FOUND) {
        FUNC0("find_item_in_tree returned %08x\n", Status);
    }

    if (Status == STATUS_NOT_FOUND) {
        tp->tree = r->treeholder.tree;
        tp->item = NULL;
    }

    return Status;
}