
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ address; } ;
struct TYPE_20__ {TYPE_2__ header; scalar_t__ has_address; int updated_extents; } ;
typedef TYPE_5__ tree ;
struct TYPE_21__ {TYPE_4__* item; } ;
typedef TYPE_6__ traverse_ptr ;
struct TYPE_16__ {int incompat_flags; } ;
struct TYPE_22__ {int extent_root; TYPE_1__ superblock; } ;
typedef TYPE_7__ device_extension ;
struct TYPE_23__ {scalar_t__ obj_id; int offset; scalar_t__ obj_type; } ;
struct TYPE_18__ {scalar_t__ obj_id; scalar_t__ obj_type; } ;
struct TYPE_19__ {TYPE_3__ key; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef TYPE_8__ KEY ;


 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ;
 int ERR (char*,int ) ;
 int NT_SUCCESS (int ) ;
 scalar_t__ TYPE_EXTENT_ITEM ;
 scalar_t__ TYPE_METADATA_ITEM ;
 int find_item (TYPE_7__*,int ,TYPE_6__*,TYPE_8__*,int,int ) ;
 int update_tree_extents (TYPE_7__*,TYPE_5__*,int ,int *) ;

__attribute__((used)) static bool shared_tree_is_unique(device_extension* Vcb, tree* t, PIRP Irp, LIST_ENTRY* rollback) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;

    if (!t->updated_extents && t->has_address) {
        Status = update_tree_extents(Vcb, t, Irp, rollback);
        if (!NT_SUCCESS(Status)) {
            ERR("update_tree_extents returned %08x\n", Status);
            return 0;
        }
    }

    searchkey.obj_id = t->header.address;
    searchkey.obj_type = Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ? TYPE_METADATA_ITEM : TYPE_EXTENT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = find_item(Vcb, Vcb->extent_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);
        return 0;
    }

    if (tp.item->key.obj_id == t->header.address && (tp.item->key.obj_type == TYPE_METADATA_ITEM || tp.item->key.obj_type == TYPE_EXTENT_ITEM))
        return 0;
    else
        return 1;
}
