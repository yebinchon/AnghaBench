
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_18__ {int tree; } ;
typedef TYPE_4__ traverse_ptr ;
struct TYPE_17__ {int node_size; int generation; } ;
struct TYPE_19__ {TYPE_3__ superblock; int extent_root; } ;
typedef TYPE_5__ device_extension ;
typedef int chunk ;
struct TYPE_16__ {int offset; } ;
struct TYPE_15__ {int refcount; int flags; int generation; } ;
struct TYPE_20__ {TYPE_2__ tbr; int type; TYPE_1__ ei; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef TYPE_6__ EXTENT_ITEM_SKINNY_METADATA ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int EXTENT_ITEM_TREE_BLOCK ;
 TYPE_6__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_6__*) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int TYPE_METADATA_ITEM ;
 int TYPE_TREE_BLOCK_REF ;
 int acquire_chunk_lock (int *,TYPE_5__*) ;
 int add_parents_to_cache (int ) ;
 int insert_tree_item (TYPE_5__*,int ,int ,int ,int ,TYPE_6__*,int,TYPE_4__*,int ) ;
 int release_chunk_lock (int *,TYPE_5__*) ;
 int space_list_subtract (int *,int,int ,int ,int *) ;

__attribute__((used)) static bool insert_tree_extent_skinny(device_extension* Vcb, uint8_t level, uint64_t root_id, chunk* c, uint64_t address, PIRP Irp, LIST_ENTRY* rollback) {
    NTSTATUS Status;
    EXTENT_ITEM_SKINNY_METADATA* eism;
    traverse_ptr insert_tp;

    eism = ExAllocatePoolWithTag(PagedPool, sizeof(EXTENT_ITEM_SKINNY_METADATA), ALLOC_TAG);
    if (!eism) {
        ERR("out of memory\n");
        return 0;
    }

    eism->ei.refcount = 1;
    eism->ei.generation = Vcb->superblock.generation;
    eism->ei.flags = EXTENT_ITEM_TREE_BLOCK;
    eism->type = TYPE_TREE_BLOCK_REF;
    eism->tbr.offset = root_id;

    Status = insert_tree_item(Vcb, Vcb->extent_root, address, TYPE_METADATA_ITEM, level, eism, sizeof(EXTENT_ITEM_SKINNY_METADATA), &insert_tp, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item returned %08x\n", Status);
        ExFreePool(eism);
        return 0;
    }

    acquire_chunk_lock(c, Vcb);

    space_list_subtract(c, 0, address, Vcb->superblock.node_size, rollback);

    release_chunk_lock(c, Vcb);

    add_parents_to_cache(insert_tp.tree);

    return 1;
}
