#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_22__ {TYPE_3__* tree; } ;
struct TYPE_24__ {TYPE_19__ treeholder; scalar_t__ ignore; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ tree_data ;
struct TYPE_23__ {scalar_t__ level; } ;
struct TYPE_25__ {int /*<<< orphan*/  root; TYPE_1__ header; int /*<<< orphan*/  itemlist; } ;
typedef  TYPE_3__ tree ;
struct TYPE_26__ {TYPE_2__* item; TYPE_3__* tree; } ;
typedef  TYPE_4__ traverse_ptr ;
typedef  int /*<<< orphan*/  device_extension ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_19__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static NTSTATUS FUNC10(device_extension* Vcb, tree* t, traverse_ptr* tp, const KEY* searchkey, bool ignore, uint8_t level, PIRP Irp) {
    int cmp;
    tree_data *td, *lasttd;
    KEY key2;

    cmp = 1;
    td = FUNC6(t);
    lasttd = NULL;

    if (!td) return STATUS_NOT_FOUND;

    key2 = *searchkey;

    do {
        cmp = FUNC7(key2, td->key);

        if (cmp == 1) {
            lasttd = td;
            td = FUNC8(t, td);
        }

        if (t->header.level == 0 && cmp == 0 && !ignore && td && td->ignore) {
            tree_data* origtd = td;

            while (td && td->ignore)
                td = FUNC8(t, td);

            if (td) {
                cmp = FUNC7(key2, td->key);

                if (cmp != 0) {
                    td = origtd;
                    cmp = 0;
                }
            } else
                td = origtd;
        }
    } while (td && cmp == 1);

    if ((cmp == -1 || !td) && lasttd)
        td = lasttd;

    if (t->header.level == 0) {
        if (td->ignore && !ignore) {
            traverse_ptr oldtp;

            oldtp.tree = t;
            oldtp.item = td;

            while (FUNC5(Vcb, &oldtp, tp, Irp)) {
                if (!tp->item->ignore)
                    return STATUS_SUCCESS;

                oldtp = *tp;
            }

            // if no valid entries before where item should be, look afterwards instead

            oldtp.tree = t;
            oldtp.item = td;

            while (FUNC4(Vcb, &oldtp, tp, true, Irp)) {
                if (!tp->item->ignore)
                    return STATUS_SUCCESS;

                oldtp = *tp;
            }

            return STATUS_NOT_FOUND;
        } else {
            tp->tree = t;
            tp->item = td;
        }

        return STATUS_SUCCESS;
    } else {
        NTSTATUS Status;

        while (td && td->treeholder.tree && FUNC1(&td->treeholder.tree->itemlist)) {
            td = FUNC9(t, td);
        }

        if (!td)
            return STATUS_NOT_FOUND;

        if (t->header.level <= level) {
            tp->tree = t;
            tp->item = td;
            return STATUS_SUCCESS;
        }

        if (!td->treeholder.tree) {
            Status = FUNC3(Vcb, &td->treeholder, t->root, t, td, Irp);
            if (!FUNC2(Status)) {
                FUNC0("do_load_tree returned %08x\n", Status);
                return Status;
            }
        }

        Status = FUNC10(Vcb, td->treeholder.tree, tp, searchkey, ignore, level, Irp);

        return Status;
    }
}