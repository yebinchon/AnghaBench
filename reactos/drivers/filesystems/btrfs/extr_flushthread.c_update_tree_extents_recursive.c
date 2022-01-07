
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; scalar_t__ has_address; int updated_extents; } ;
typedef TYPE_1__ tree ;
typedef int device_extension ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;


 int ERR (char*,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int update_tree_extents (int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static NTSTATUS update_tree_extents_recursive(device_extension* Vcb, tree* t, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;

    if (t->parent && !t->parent->updated_extents && t->parent->has_address) {
        Status = update_tree_extents_recursive(Vcb, t->parent, Irp, rollback);
        if (!NT_SUCCESS(Status))
            return Status;
    }

    Status = update_tree_extents(Vcb, t, Irp, rollback);
    if (!NT_SUCCESS(Status)) {
        ERR("update_tree_extents returned %08x\n", Status);
        return Status;
    }

    return STATUS_SUCCESS;
}
