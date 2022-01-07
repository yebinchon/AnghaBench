
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_14__ {TYPE_1__* item; } ;
typedef TYPE_2__ traverse_ptr ;
struct TYPE_15__ {int root_root; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_16__ {void* offset; int obj_type; void* obj_id; } ;
struct TYPE_13__ {scalar_t__ size; int key; int data; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_4__ KEY ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int * ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlCopyMemory (int *,int ,scalar_t__) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TYPE_ROOT_BACKREF ;
 int TYPE_ROOT_REF ;
 int delete_tree_item (TYPE_3__*,TYPE_2__*) ;
 int find_item (TYPE_3__*,int ,TYPE_2__*,TYPE_4__*,int,int ) ;
 int insert_tree_item (TYPE_3__*,int ,void*,int ,void*,int *,scalar_t__,int *,int ) ;
 int keycmp (int ,TYPE_4__) ;

__attribute__((used)) static NTSTATUS update_root_backref(device_extension* Vcb, uint64_t subvolid, uint64_t parsubvolid, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    uint8_t* data;
    uint16_t datalen;
    NTSTATUS Status;

    searchkey.obj_id = parsubvolid;
    searchkey.obj_type = TYPE_ROOT_REF;
    searchkey.offset = subvolid;

    Status = find_item(Vcb, Vcb->root_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);
        return Status;
    }

    if (!keycmp(tp.item->key, searchkey) && tp.item->size > 0) {
        datalen = tp.item->size;

        data = ExAllocatePoolWithTag(PagedPool, datalen, ALLOC_TAG);
        if (!data) {
            ERR("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        RtlCopyMemory(data, tp.item->data, datalen);
    } else {
        datalen = 0;
        data = ((void*)0);
    }

    searchkey.obj_id = subvolid;
    searchkey.obj_type = TYPE_ROOT_BACKREF;
    searchkey.offset = parsubvolid;

    Status = find_item(Vcb, Vcb->root_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);

        if (datalen > 0)
            ExFreePool(data);

        return Status;
    }

    if (!keycmp(tp.item->key, searchkey)) {
        Status = delete_tree_item(Vcb, &tp);
        if (!NT_SUCCESS(Status)) {
            ERR("delete_tree_item returned %08x\n", Status);

            if (datalen > 0)
                ExFreePool(data);

            return Status;
        }
    }

    if (datalen > 0) {
        Status = insert_tree_item(Vcb, Vcb->root_root, subvolid, TYPE_ROOT_BACKREF, parsubvolid, data, datalen, ((void*)0), Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("insert_tree_item returned %08x\n", Status);
            ExFreePool(data);
            return Status;
        }
    }

    return STATUS_SUCCESS;
}
