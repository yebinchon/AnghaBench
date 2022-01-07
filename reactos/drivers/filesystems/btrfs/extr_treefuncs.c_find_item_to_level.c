
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int * item; scalar_t__ tree; } ;
typedef TYPE_1__ traverse_ptr ;
struct TYPE_10__ {scalar_t__ tree; } ;
struct TYPE_9__ {TYPE_6__ treeholder; } ;
typedef TYPE_2__ root ;
typedef int device_extension ;
typedef int PIRP ;
typedef scalar_t__ NTSTATUS ;
typedef int KEY ;


 int ERR (char*,scalar_t__) ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_NOT_FOUND ;
 scalar_t__ do_load_tree (int *,TYPE_6__*,TYPE_2__*,int *,int *,int ) ;
 scalar_t__ find_item_in_tree (int *,scalar_t__,TYPE_1__*,int const*,int,int ,int ) ;

NTSTATUS find_item_to_level(device_extension* Vcb, root* r, traverse_ptr* tp, const KEY* searchkey, bool ignore, uint8_t level, PIRP Irp) {
    NTSTATUS Status;

    if (!r->treeholder.tree) {
        Status = do_load_tree(Vcb, &r->treeholder, r, ((void*)0), ((void*)0), Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("do_load_tree returned %08x\n", Status);
            return Status;
        }
    }

    Status = find_item_in_tree(Vcb, r->treeholder.tree, tp, searchkey, ignore, level, Irp);
    if (!NT_SUCCESS(Status) && Status != STATUS_NOT_FOUND) {
        ERR("find_item_in_tree returned %08x\n", Status);
    }

    if (Status == STATUS_NOT_FOUND) {
        tp->tree = r->treeholder.tree;
        tp->item = ((void*)0);
    }

    return Status;
}
