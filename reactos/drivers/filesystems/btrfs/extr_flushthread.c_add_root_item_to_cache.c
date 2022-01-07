
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_17__ {TYPE_3__* tree; TYPE_2__* item; } ;
typedef TYPE_4__ traverse_ptr ;
struct TYPE_18__ {int root_root; } ;
typedef TYPE_5__ device_extension ;
struct TYPE_19__ {scalar_t__ obj_id; scalar_t__ obj_type; int offset; } ;
struct TYPE_16__ {int write; } ;
struct TYPE_14__ {scalar_t__ obj_id; scalar_t__ obj_type; int offset; } ;
struct TYPE_15__ {int size; TYPE_1__ key; int data; } ;
typedef int ROOT_ITEM ;
typedef int PIRP ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_6__ KEY ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (scalar_t__) ;
 int PagedPool ;
 int RtlCopyMemory (int *,int ,scalar_t__) ;
 int RtlZeroMemory (int *,int) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_INTERNAL_ERROR ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TYPE_ROOT_ITEM ;
 scalar_t__ delete_tree_item (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ find_item (TYPE_5__*,int ,TYPE_4__*,TYPE_6__*,int,int ) ;
 scalar_t__ insert_tree_item (TYPE_5__*,int ,scalar_t__,scalar_t__,int ,int *,int,int *,int ) ;

__attribute__((used)) static NTSTATUS add_root_item_to_cache(device_extension* Vcb, uint64_t root, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;

    searchkey.obj_id = root;
    searchkey.obj_type = TYPE_ROOT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = find_item(Vcb, Vcb->root_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (tp.item->key.obj_id != searchkey.obj_id || tp.item->key.obj_type != searchkey.obj_type) {
        ERR("could not find ROOT_ITEM for tree %I64x\n", searchkey.obj_id);
        return STATUS_INTERNAL_ERROR;
    }

    if (tp.item->size < sizeof(ROOT_ITEM)) {
        ROOT_ITEM* ri = ExAllocatePoolWithTag(PagedPool, sizeof(ROOT_ITEM), ALLOC_TAG);
        if (!ri) {
            ERR("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        if (tp.item->size > 0)
            RtlCopyMemory(ri, tp.item->data, tp.item->size);

        RtlZeroMemory(((uint8_t*)ri) + tp.item->size, sizeof(ROOT_ITEM) - tp.item->size);

        Status = delete_tree_item(Vcb, &tp);
        if (!NT_SUCCESS(Status)) {
            ERR("delete_tree_item returned %08x\n", Status);
            ExFreePool(ri);
            return Status;
        }

        Status = insert_tree_item(Vcb, Vcb->root_root, searchkey.obj_id, searchkey.obj_type, tp.item->key.offset, ri, sizeof(ROOT_ITEM), ((void*)0), Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("insert_tree_item returned %08x\n", Status);
            ExFreePool(ri);
            return Status;
        }
    } else {
        tp.tree->write = 1;
    }

    return STATUS_SUCCESS;
}
