
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_18__ {TYPE_1__* item; } ;
typedef TYPE_2__ traverse_ptr ;
struct TYPE_19__ {int chunk_root; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_16__ {int dev_id; } ;
struct TYPE_20__ {TYPE_15__ devitem; } ;
typedef TYPE_4__ device ;
struct TYPE_21__ {int obj_id; int offset; int obj_type; } ;
struct TYPE_17__ {int key; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_5__ KEY ;
typedef int DEV_ITEM ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlCopyMemory (int *,TYPE_15__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int TYPE_DEV_ITEM ;
 int delete_tree_item (TYPE_3__*,TYPE_2__*) ;
 int find_item (TYPE_3__*,int ,TYPE_2__*,TYPE_5__*,int,int ) ;
 int insert_tree_item (TYPE_3__*,int ,int,int ,int ,int *,int,int *,int ) ;
 scalar_t__ keycmp (int ,TYPE_5__) ;

NTSTATUS update_dev_item(device_extension* Vcb, device* device, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    DEV_ITEM* di;
    NTSTATUS Status;

    searchkey.obj_id = 1;
    searchkey.obj_type = TYPE_DEV_ITEM;
    searchkey.offset = device->devitem.dev_id;

    Status = find_item(Vcb, Vcb->chunk_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (keycmp(tp.item->key, searchkey)) {
        ERR("error - could not find DEV_ITEM for device %I64x\n", device->devitem.dev_id);
        return STATUS_INTERNAL_ERROR;
    }

    Status = delete_tree_item(Vcb, &tp);
    if (!NT_SUCCESS(Status)) {
        ERR("delete_tree_item returned %08x\n", Status);
        return Status;
    }

    di = ExAllocatePoolWithTag(PagedPool, sizeof(DEV_ITEM), ALLOC_TAG);
    if (!di) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlCopyMemory(di, &device->devitem, sizeof(DEV_ITEM));

    Status = insert_tree_item(Vcb, Vcb->chunk_root, 1, TYPE_DEV_ITEM, device->devitem.dev_id, di, sizeof(DEV_ITEM), ((void*)0), Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item returned %08x\n", Status);
        ExFreePool(di);
        return Status;
    }

    return STATUS_SUCCESS;
}
