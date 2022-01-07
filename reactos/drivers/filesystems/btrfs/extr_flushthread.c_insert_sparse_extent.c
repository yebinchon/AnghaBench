
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_12__ {int inode; TYPE_6__* subvol; TYPE_5__* Vcb; } ;
typedef TYPE_2__ fcb ;
struct TYPE_16__ {int id; } ;
struct TYPE_11__ {int generation; } ;
struct TYPE_15__ {TYPE_1__ superblock; } ;
struct TYPE_14__ {scalar_t__ data; int type; int encoding; int encryption; int compression; void* decoded_size; int generation; } ;
struct TYPE_13__ {void* num_bytes; scalar_t__ offset; scalar_t__ size; scalar_t__ address; } ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef TYPE_3__ EXTENT_DATA2 ;
typedef TYPE_4__ EXTENT_DATA ;


 int ALLOC_TAG ;
 int BTRFS_COMPRESSION_NONE ;
 int BTRFS_ENCODING_NONE ;
 int BTRFS_ENCRYPTION_NONE ;
 int Batch_Insert ;
 int ERR (char*,...) ;
 int EXTENT_TYPE_REGULAR ;
 TYPE_4__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_4__*) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TRACE (char*,int ,int ,void*,void*) ;
 int TYPE_EXTENT_DATA ;
 int insert_tree_item_batch (int *,TYPE_5__*,TYPE_6__*,int ,int ,void*,TYPE_4__*,int,int ) ;

__attribute__((used)) static NTSTATUS insert_sparse_extent(fcb* fcb, LIST_ENTRY* batchlist, uint64_t start, uint64_t length) {
    NTSTATUS Status;
    EXTENT_DATA* ed;
    EXTENT_DATA2* ed2;

    TRACE("((%I64x, %I64x), %I64x, %I64x)\n", fcb->subvol->id, fcb->inode, start, length);

    ed = ExAllocatePoolWithTag(PagedPool, sizeof(EXTENT_DATA) - 1 + sizeof(EXTENT_DATA2), ALLOC_TAG);
    if (!ed) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    ed->generation = fcb->Vcb->superblock.generation;
    ed->decoded_size = length;
    ed->compression = BTRFS_COMPRESSION_NONE;
    ed->encryption = BTRFS_ENCRYPTION_NONE;
    ed->encoding = BTRFS_ENCODING_NONE;
    ed->type = EXTENT_TYPE_REGULAR;

    ed2 = (EXTENT_DATA2*)ed->data;
    ed2->address = 0;
    ed2->size = 0;
    ed2->offset = 0;
    ed2->num_bytes = length;

    Status = insert_tree_item_batch(batchlist, fcb->Vcb, fcb->subvol, fcb->inode, TYPE_EXTENT_DATA, start, ed, sizeof(EXTENT_DATA) - 1 + sizeof(EXTENT_DATA2), Batch_Insert);
    if (!NT_SUCCESS(Status)) {
        ERR("insert_tree_item_batch returned %08x\n", Status);
        ExFreePool(ed);
        return Status;
    }

    return STATUS_SUCCESS;
}
