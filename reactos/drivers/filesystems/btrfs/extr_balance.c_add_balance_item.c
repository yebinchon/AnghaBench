
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;


struct TYPE_25__ {TYPE_1__* item; } ;
typedef TYPE_3__ traverse_ptr ;
struct TYPE_24__ {TYPE_17__* opts; } ;
struct TYPE_26__ {int tree_lock; int root_root; TYPE_2__ balance; } ;
typedef TYPE_4__ device_extension ;
struct TYPE_28__ {int system; int flags; int metadata; int data; } ;
struct TYPE_27__ {scalar_t__ offset; int obj_type; int obj_id; } ;
struct TYPE_23__ {int key; } ;
struct TYPE_22__ {int flags; } ;
typedef int NTSTATUS ;
typedef TYPE_5__ KEY ;
typedef TYPE_6__ BALANCE_ITEM ;


 int ALLOC_TAG ;
 int BALANCE_FLAGS_DATA ;
 int BALANCE_FLAGS_METADATA ;
 int BALANCE_FLAGS_SYSTEM ;
 int BALANCE_ITEM_ID ;
 size_t BALANCE_OPTS_DATA ;
 size_t BALANCE_OPTS_METADATA ;
 size_t BALANCE_OPTS_SYSTEM ;
 int BTRFS_BALANCE_OPTS_ENABLED ;
 int ERR (char*,...) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 TYPE_6__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_6__*) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlZeroMemory (TYPE_6__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TYPE_TEMP_ITEM ;
 int copy_balance_args (TYPE_17__*,int *) ;
 int delete_tree_item (TYPE_4__*,TYPE_3__*) ;
 int do_write (TYPE_4__*,int *) ;
 int find_item (TYPE_4__*,int ,TYPE_3__*,TYPE_5__*,int,int *) ;
 int free_trees (TYPE_4__*) ;
 int insert_tree_item (TYPE_4__*,int ,int ,int ,int ,TYPE_6__*,int,int *,int *) ;
 int keycmp (int ,TYPE_5__) ;

__attribute__((used)) static NTSTATUS add_balance_item(device_extension* Vcb) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;
    BALANCE_ITEM* bi;

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
    }

    bi = ExAllocatePoolWithTag(PagedPool, sizeof(BALANCE_ITEM), ALLOC_TAG);
    if (!bi) {
        ERR("out of memory\n");
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto end;
    }

    RtlZeroMemory(bi, sizeof(BALANCE_ITEM));

    if (Vcb->balance.opts[BALANCE_OPTS_DATA].flags & BTRFS_BALANCE_OPTS_ENABLED) {
        bi->flags |= BALANCE_FLAGS_DATA;
        copy_balance_args(&Vcb->balance.opts[BALANCE_OPTS_DATA], &bi->data);
    }

    if (Vcb->balance.opts[BALANCE_OPTS_METADATA].flags & BTRFS_BALANCE_OPTS_ENABLED) {
        bi->flags |= BALANCE_FLAGS_METADATA;
        copy_balance_args(&Vcb->balance.opts[BALANCE_OPTS_METADATA], &bi->metadata);
    }

    if (Vcb->balance.opts[BALANCE_OPTS_SYSTEM].flags & BTRFS_BALANCE_OPTS_ENABLED) {
        bi->flags |= BALANCE_FLAGS_SYSTEM;
        copy_balance_args(&Vcb->balance.opts[BALANCE_OPTS_SYSTEM], &bi->system);
    }

    Status = insert_tree_item(Vcb, Vcb->root_root, BALANCE_ITEM_ID, TYPE_TEMP_ITEM, 0, bi, sizeof(BALANCE_ITEM), ((void*)0), ((void*)0));
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item returned %08x\n", Status);
        ExFreePool(bi);
        goto end;
    }

    Status = STATUS_SUCCESS;

end:
    if (NT_SUCCESS(Status)) {
        Status = do_write(Vcb, ((void*)0));
        if (!NT_SUCCESS(Status))
            ERR("do_write returned %08x\n", Status);
    }

    free_trees(Vcb);

    ExReleaseResourceLite(&Vcb->tree_lock);

    return Status;
}
