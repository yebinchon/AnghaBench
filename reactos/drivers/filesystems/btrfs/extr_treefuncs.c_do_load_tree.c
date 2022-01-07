
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_22__ {TYPE_4__* tree; int generation; int address; } ;
typedef TYPE_5__ tree_holder ;
typedef int tree_data ;
struct TYPE_23__ {TYPE_2__* nonpaged; } ;
typedef TYPE_6__ tree ;
struct TYPE_24__ {TYPE_3__* nonpaged; } ;
typedef TYPE_7__ root ;
struct TYPE_18__ {int node_size; } ;
struct TYPE_25__ {TYPE_1__ superblock; } ;
typedef TYPE_8__ device_extension ;
typedef int chunk ;
struct TYPE_21__ {int * buf; } ;
struct TYPE_20__ {int load_tree_lock; } ;
struct TYPE_19__ {int mutex; } ;
typedef int PIRP ;
typedef int NTSTATUS ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int ExAcquireFastMutex (int *) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePool (int *) ;
 int ExReleaseFastMutex (int *) ;
 int ExReleaseResourceLite (int *) ;
 int NT_SUCCESS (int ) ;
 int NormalPagePriority ;
 int PagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int do_load_tree2 (TYPE_8__*,TYPE_5__*,int *,TYPE_7__*,TYPE_6__*,int *) ;
 int read_data (TYPE_8__*,int ,int ,int *,int,int *,int *,int **,int ,int ,int,int ) ;

NTSTATUS do_load_tree(device_extension* Vcb, tree_holder* th, root* r, tree* t, tree_data* td, PIRP Irp) {
    NTSTATUS Status;
    uint8_t* buf;
    chunk* c;

    buf = ExAllocatePoolWithTag(PagedPool, Vcb->superblock.node_size, ALLOC_TAG);
    if (!buf) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = read_data(Vcb, th->address, Vcb->superblock.node_size, ((void*)0), 1, buf, ((void*)0),
                       &c, Irp, th->generation, 0, NormalPagePriority);
    if (!NT_SUCCESS(Status)) {
        ERR("read_data returned 0x%08x\n", Status);
        ExFreePool(buf);
        return Status;
    }

    if (t)
        ExAcquireFastMutex(&t->nonpaged->mutex);
    else
        ExAcquireResourceExclusiveLite(&r->nonpaged->load_tree_lock, 1);

    Status = do_load_tree2(Vcb, th, buf, r, t, td);

    if (t)
        ExReleaseFastMutex(&t->nonpaged->mutex);
    else
        ExReleaseResourceLite(&r->nonpaged->load_tree_lock);

    if (!th->tree || th->tree->buf != buf)
        ExFreePool(buf);

    if (!NT_SUCCESS(Status)) {
        ERR("do_load_tree2 returned %08x\n", Status);
        return Status;
    }

    return Status;
}
