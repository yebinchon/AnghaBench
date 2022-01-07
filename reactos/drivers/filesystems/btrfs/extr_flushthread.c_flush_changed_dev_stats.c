
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_18__ {TYPE_1__* item; } ;
typedef TYPE_3__ traverse_ptr ;
struct TYPE_19__ {int dev_root; } ;
typedef TYPE_4__ device_extension ;
struct TYPE_17__ {int dev_id; } ;
struct TYPE_20__ {TYPE_2__ devitem; int stats; } ;
typedef TYPE_5__ device ;
struct TYPE_21__ {int offset; int obj_type; scalar_t__ obj_id; } ;
struct TYPE_16__ {int key; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_6__ KEY ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlCopyMemory (int *,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TYPE_DEV_STATS ;
 int delete_tree_item (TYPE_4__*,TYPE_3__*) ;
 int find_item (TYPE_4__*,int ,TYPE_3__*,TYPE_6__*,int,int ) ;
 int insert_tree_item (TYPE_4__*,int ,int ,int ,int ,int *,int,int *,int ) ;
 int keycmp (int ,TYPE_6__) ;

__attribute__((used)) static NTSTATUS flush_changed_dev_stats(device_extension* Vcb, device* dev, PIRP Irp) {
    NTSTATUS Status;
    KEY searchkey;
    traverse_ptr tp;
    uint16_t statslen;
    uint64_t* stats;

    searchkey.obj_id = 0;
    searchkey.obj_type = TYPE_DEV_STATS;
    searchkey.offset = dev->devitem.dev_id;

    Status = find_item(Vcb, Vcb->dev_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("find_item returned %08x\n", Status);
        return Status;
    }

    if (!keycmp(tp.item->key, searchkey)) {
        Status = delete_tree_item(Vcb, &tp);
        if (!NT_SUCCESS(Status)) {
            ERR("delete_tree_item returned %08x\n", Status);
            return Status;
        }
    }

    statslen = sizeof(uint64_t) * 5;
    stats = ExAllocatePoolWithTag(PagedPool, statslen, ALLOC_TAG);
    if (!stats) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlCopyMemory(stats, dev->stats, statslen);

    Status = insert_tree_item(Vcb, Vcb->dev_root, 0, TYPE_DEV_STATS, dev->devitem.dev_id, stats, statslen, ((void*)0), Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item returned %08x\n", Status);
        ExFreePool(stats);
        return Status;
    }

    return STATUS_SUCCESS;
}
