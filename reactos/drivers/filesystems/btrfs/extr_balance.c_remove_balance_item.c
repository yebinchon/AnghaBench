
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* item; } ;
typedef TYPE_2__ traverse_ptr ;
struct TYPE_16__ {int tree_lock; int root_root; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_17__ {scalar_t__ offset; int obj_type; int obj_id; } ;
struct TYPE_14__ {int key; } ;
typedef int NTSTATUS ;
typedef TYPE_4__ KEY ;


 int BALANCE_ITEM_ID ;
 int ERR (char*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int TYPE_TEMP_ITEM ;
 int delete_tree_item (TYPE_3__*,TYPE_2__*) ;
 int do_write (TYPE_3__*,int *) ;
 int find_item (TYPE_3__*,int ,TYPE_2__*,TYPE_4__*,int,int *) ;
 int free_trees (TYPE_3__*) ;
 int keycmp (int ,TYPE_4__) ;

__attribute__((used)) static NTSTATUS remove_balance_item(device_extension* Vcb) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;

    searchkey.obj_id = BALANCE_ITEM_ID;
    searchkey.obj_type = TYPE_TEMP_ITEM;
    searchkey.offset = 0;

    ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);

    Status = find_item(Vcb, Vcb->root_root, &tp, &searchkey, 0, ((void*)0));
    if (!NT_SUCCESS(Status)) {
        ERR("find_item returned %08x\n", Status);
        goto end;
    }

    if (!keycmp(tp.item->key, searchkey)) {
        Status = delete_tree_item(Vcb, &tp);
        if (!NT_SUCCESS(Status)) {
            ERR("delete_tree_item returned %08x\n", Status);
            goto end;
        }

        Status = do_write(Vcb, ((void*)0));
        if (!NT_SUCCESS(Status)) {
            ERR("do_write returned %08x\n", Status);
            goto end;
        }

        free_trees(Vcb);
    }

    Status = STATUS_SUCCESS;

end:
    ExReleaseResourceLite(&Vcb->tree_lock);

    return Status;
}
