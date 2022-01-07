
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_22__ {TYPE_3__* tree; } ;
struct TYPE_24__ {TYPE_19__ treeholder; scalar_t__ ignore; int key; } ;
typedef TYPE_2__ tree_data ;
struct TYPE_23__ {scalar_t__ level; } ;
struct TYPE_25__ {int root; TYPE_1__ header; int itemlist; } ;
typedef TYPE_3__ tree ;
struct TYPE_26__ {TYPE_2__* item; TYPE_3__* tree; } ;
typedef TYPE_4__ traverse_ptr ;
typedef int device_extension ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int KEY ;


 int ERR (char*,int ) ;
 scalar_t__ IsListEmpty (int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int do_load_tree (int *,TYPE_19__*,int ,TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ find_next_item (int *,TYPE_4__*,TYPE_4__*,int,int ) ;
 scalar_t__ find_prev_item (int *,TYPE_4__*,TYPE_4__*,int ) ;
 TYPE_2__* first_item (TYPE_3__*) ;
 int keycmp (int ,int ) ;
 TYPE_2__* next_item (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* prev_item (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static NTSTATUS find_item_in_tree(device_extension* Vcb, tree* t, traverse_ptr* tp, const KEY* searchkey, bool ignore, uint8_t level, PIRP Irp) {
    int cmp;
    tree_data *td, *lasttd;
    KEY key2;

    cmp = 1;
    td = first_item(t);
    lasttd = ((void*)0);

    if (!td) return STATUS_NOT_FOUND;

    key2 = *searchkey;

    do {
        cmp = keycmp(key2, td->key);

        if (cmp == 1) {
            lasttd = td;
            td = next_item(t, td);
        }

        if (t->header.level == 0 && cmp == 0 && !ignore && td && td->ignore) {
            tree_data* origtd = td;

            while (td && td->ignore)
                td = next_item(t, td);

            if (td) {
                cmp = keycmp(key2, td->key);

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

            while (find_prev_item(Vcb, &oldtp, tp, Irp)) {
                if (!tp->item->ignore)
                    return STATUS_SUCCESS;

                oldtp = *tp;
            }



            oldtp.tree = t;
            oldtp.item = td;

            while (find_next_item(Vcb, &oldtp, tp, 1, Irp)) {
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

        while (td && td->treeholder.tree && IsListEmpty(&td->treeholder.tree->itemlist)) {
            td = prev_item(t, td);
        }

        if (!td)
            return STATUS_NOT_FOUND;

        if (t->header.level <= level) {
            tp->tree = t;
            tp->item = td;
            return STATUS_SUCCESS;
        }

        if (!td->treeholder.tree) {
            Status = do_load_tree(Vcb, &td->treeholder, t->root, t, td, Irp);
            if (!NT_SUCCESS(Status)) {
                ERR("do_load_tree returned %08x\n", Status);
                return Status;
            }
        }

        Status = find_item_in_tree(Vcb, td->treeholder.tree, tp, searchkey, ignore, level, Irp);

        return Status;
    }
}
