
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_24__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_13__ ;


typedef size_t uint16_t ;
struct TYPE_34__ {int bytes_used; } ;
struct TYPE_35__ {TYPE_5__ superblock; TYPE_15__* dev_root; TYPE_15__* chunk_root; TYPE_15__* extent_root; } ;
typedef TYPE_6__ device_extension ;
struct TYPE_36__ {int size; int offset; int created; int used; int oldused; TYPE_13__** devices; TYPE_24__* chunk_item; } ;
typedef TYPE_7__ chunk ;
struct TYPE_38__ {int offset; } ;
struct TYPE_37__ {int chunk_tree; int flags; int objid; int address; size_t length; int chunktree_uuid; int chunktree; int used; } ;
struct TYPE_33__ {int dev_id; } ;
struct TYPE_32__ {TYPE_2__* tree; } ;
struct TYPE_29__ {int chunk_tree_uuid; } ;
struct TYPE_31__ {TYPE_1__ header; } ;
struct TYPE_30__ {int type; int size; size_t num_stripes; size_t sub_stripes; } ;
struct TYPE_28__ {TYPE_3__ treeholder; int id; } ;
struct TYPE_27__ {TYPE_4__ devitem; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_8__ DEV_EXTENT ;
typedef TYPE_9__ CHUNK_ITEM_STRIPE ;
typedef TYPE_8__ CHUNK_ITEM ;
typedef TYPE_8__ BLOCK_GROUP_ITEM ;


 int ALLOC_TAG ;
 int BLOCK_FLAG_RAID0 ;
 int BLOCK_FLAG_RAID10 ;
 int BLOCK_FLAG_RAID5 ;
 int BLOCK_FLAG_RAID6 ;
 int BLOCK_FLAG_SYSTEM ;
 int ERR (char*,...) ;
 TYPE_8__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_8__*) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlCopyMemory (TYPE_8__*,TYPE_24__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TYPE_BLOCK_GROUP_ITEM ;
 int TYPE_CHUNK_ITEM ;
 int TYPE_DEV_EXTENT ;
 int add_to_bootstrap (TYPE_6__*,int,int ,int,TYPE_8__*,int) ;
 scalar_t__ chunk_estimate_phys_size (TYPE_6__*,TYPE_7__*,int ) ;
 int insert_tree_item (TYPE_6__*,TYPE_15__*,int,int ,int,TYPE_8__*,int,int *,int ) ;
 int update_dev_item (TYPE_6__*,TYPE_13__*,int ) ;

__attribute__((used)) static NTSTATUS create_chunk(device_extension* Vcb, chunk* c, PIRP Irp) {
    CHUNK_ITEM* ci;
    CHUNK_ITEM_STRIPE* cis;
    BLOCK_GROUP_ITEM* bgi;
    uint16_t i, factor;
    NTSTATUS Status;

    ci = ExAllocatePoolWithTag(PagedPool, c->size, ALLOC_TAG);
    if (!ci) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlCopyMemory(ci, c->chunk_item, c->size);

    Status = insert_tree_item(Vcb, Vcb->chunk_root, 0x100, TYPE_CHUNK_ITEM, c->offset, ci, c->size, ((void*)0), Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item failed\n");
        ExFreePool(ci);
        return Status;
    }

    if (c->chunk_item->type & BLOCK_FLAG_SYSTEM) {
        Status = add_to_bootstrap(Vcb, 0x100, TYPE_CHUNK_ITEM, c->offset, ci, c->size);
        if (!NT_SUCCESS(Status)) {
            ERR("add_to_bootstrap returned %08x\n", Status);
            return Status;
        }
    }



    bgi = ExAllocatePoolWithTag(PagedPool, sizeof(BLOCK_GROUP_ITEM), ALLOC_TAG);
    if (!bgi) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    bgi->used = c->used;
    bgi->chunk_tree = 0x100;
    bgi->flags = c->chunk_item->type;

    Status = insert_tree_item(Vcb, Vcb->extent_root, c->offset, TYPE_BLOCK_GROUP_ITEM, c->chunk_item->size, bgi, sizeof(BLOCK_GROUP_ITEM), ((void*)0), Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item failed\n");
        ExFreePool(bgi);
        return Status;
    }

    if (c->chunk_item->type & BLOCK_FLAG_RAID0)
        factor = c->chunk_item->num_stripes;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID10)
        factor = c->chunk_item->num_stripes / c->chunk_item->sub_stripes;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID5)
        factor = c->chunk_item->num_stripes - 1;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID6)
        factor = c->chunk_item->num_stripes - 2;
    else
        factor = 1;



    cis = (CHUNK_ITEM_STRIPE*)&c->chunk_item[1];

    for (i = 0; i < c->chunk_item->num_stripes; i++) {
        DEV_EXTENT* de;

        de = ExAllocatePoolWithTag(PagedPool, sizeof(DEV_EXTENT), ALLOC_TAG);
        if (!de) {
            ERR("out of memory\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        de->chunktree = Vcb->chunk_root->id;
        de->objid = 0x100;
        de->address = c->offset;
        de->length = c->chunk_item->size / factor;
        de->chunktree_uuid = Vcb->chunk_root->treeholder.tree->header.chunk_tree_uuid;

        Status = insert_tree_item(Vcb, Vcb->dev_root, c->devices[i]->devitem.dev_id, TYPE_DEV_EXTENT, cis[i].offset, de, sizeof(DEV_EXTENT), ((void*)0), Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("insert_tree_item returned %08x\n", Status);
            ExFreePool(de);
            return Status;
        }


        Status = update_dev_item(Vcb, c->devices[i], Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("update_dev_item returned %08x\n", Status);
            return Status;
        }
    }

    c->created = 0;
    c->oldused = c->used;

    Vcb->superblock.bytes_used += chunk_estimate_phys_size(Vcb, c, c->used);

    return STATUS_SUCCESS;
}
