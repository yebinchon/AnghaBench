
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int key; } ;
typedef TYPE_2__ tree_data ;
struct TYPE_12__ {int level; } ;
struct TYPE_14__ {TYPE_1__ header; int root; struct TYPE_14__* parent; TYPE_2__* paritem; } ;
typedef TYPE_3__ tree ;
struct TYPE_15__ {TYPE_2__* item; TYPE_3__* tree; } ;
typedef TYPE_4__ traverse_ptr ;
typedef int device_extension ;
typedef int NTSTATUS ;


 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int find_item_to_level (int *,int ,TYPE_4__*,int *,int,int ,int *) ;
 TYPE_2__* next_item (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static NTSTATUS next_item2(device_extension* Vcb, tree* t, tree_data* td, traverse_ptr* tp) {
    tree_data* td2 = next_item(t, td);
    tree* t2;

    if (td2) {
        tp->tree = t;
        tp->item = td2;
        return STATUS_SUCCESS;
    }

    t2 = t;

    do {
        td2 = t2->paritem;
        t2 = t2->parent;
    } while (td2 && !next_item(t2, td2));

    if (!td2)
        return STATUS_NOT_FOUND;

    td2 = next_item(t2, td2);

    return find_item_to_level(Vcb, t2->root, tp, &td2->key, 0, t->header.level, ((void*)0));
}
