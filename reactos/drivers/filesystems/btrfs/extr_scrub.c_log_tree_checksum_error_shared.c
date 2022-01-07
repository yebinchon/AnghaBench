
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ level; size_t num_items; int tree_id; } ;
typedef TYPE_2__ tree_header ;
struct TYPE_12__ {scalar_t__ address; int key; } ;
typedef TYPE_3__ internal_node ;
struct TYPE_10__ {int node_size; } ;
struct TYPE_13__ {TYPE_1__ superblock; } ;
typedef TYPE_4__ device_extension ;
typedef size_t ULONG ;
typedef int NTSTATUS ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePool (TYPE_2__*) ;
 int NT_SUCCESS (int ) ;
 int NormalPagePriority ;
 int PagedPool ;
 int log_tree_checksum_error (TYPE_4__*,scalar_t__,scalar_t__,int ,scalar_t__,int *) ;
 int read_data (TYPE_4__*,scalar_t__,int ,int *,int,int *,int *,int *,int *,int ,int,int ) ;

__attribute__((used)) static void log_tree_checksum_error_shared(device_extension* Vcb, uint64_t offset, uint64_t address, uint64_t devid) {
    tree_header* tree;
    NTSTATUS Status;
    internal_node* in;
    ULONG i;

    tree = ExAllocatePoolWithTag(PagedPool, Vcb->superblock.node_size, ALLOC_TAG);
    if (!tree) {
        ERR("out of memory\n");
        return;
    }

    Status = read_data(Vcb, offset, Vcb->superblock.node_size, ((void*)0), 1, (uint8_t*)tree, ((void*)0), ((void*)0), ((void*)0), 0, 0, NormalPagePriority);
    if (!NT_SUCCESS(Status)) {
        ERR("read_data returned %08x\n", Status);
        goto end;
    }

    if (tree->level == 0) {
        ERR("tree level was 0\n");
        goto end;
    }

    in = (internal_node*)&tree[1];

    for (i = 0; i < tree->num_items; i++) {
        if (in[i].address == address) {
            log_tree_checksum_error(Vcb, address, devid, tree->tree_id, tree->level - 1, &in[i].key);
            break;
        }
    }

end:
    ExFreePool(tree);
}
