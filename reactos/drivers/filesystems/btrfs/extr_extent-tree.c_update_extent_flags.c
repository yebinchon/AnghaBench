
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {TYPE_3__* item; } ;
typedef TYPE_4__ traverse_ptr ;
struct TYPE_12__ {int incompat_flags; } ;
struct TYPE_16__ {TYPE_1__ superblock; int extent_root; } ;
typedef TYPE_5__ device_extension ;
struct TYPE_18__ {scalar_t__ flags; } ;
struct TYPE_17__ {int offset; scalar_t__ obj_type; scalar_t__ obj_id; } ;
struct TYPE_13__ {scalar_t__ obj_id; scalar_t__ obj_type; int offset; } ;
struct TYPE_14__ {int size; scalar_t__ data; TYPE_2__ key; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_6__ KEY ;
typedef int EXTENT_ITEM_V0 ;
typedef TYPE_7__ EXTENT_ITEM ;


 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ;
 int ERR (char*,scalar_t__,...) ;
 int NT_SUCCESS (int ) ;
 scalar_t__ TYPE_EXTENT_ITEM ;
 scalar_t__ TYPE_METADATA_ITEM ;
 int find_item (TYPE_5__*,int ,TYPE_4__*,TYPE_6__*,int,int ) ;

void update_extent_flags(device_extension* Vcb, uint64_t address, uint64_t flags, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp;
    NTSTATUS Status;
    EXTENT_ITEM* ei;

    searchkey.obj_id = address;
    searchkey.obj_type = Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ? TYPE_METADATA_ITEM : TYPE_EXTENT_ITEM;
    searchkey.offset = 0xffffffffffffffff;

    Status = find_item(Vcb, Vcb->extent_root, &tp, &searchkey, 0, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("error - find_item returned %08x\n", Status);
        return;
    }

    if (Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA && tp.item->key.obj_id == address &&
        tp.item->key.obj_type == TYPE_METADATA_ITEM && tp.item->size >= sizeof(EXTENT_ITEM)) {
        ei = (EXTENT_ITEM*)tp.item->data;
        ei->flags = flags;
        return;
    }

    if (tp.item->key.obj_id != address || tp.item->key.obj_type != TYPE_EXTENT_ITEM) {
        ERR("couldn't find %I64x in extent tree\n", address);
        return;
    }

    if (tp.item->size == sizeof(EXTENT_ITEM_V0))
        return;
    else if (tp.item->size < sizeof(EXTENT_ITEM)) {
        ERR("(%I64x,%x,%I64x) was %x bytes, expected at least %x\n", tp.item->key.obj_id, tp.item->key.obj_type,
                                                                   tp.item->key.offset, tp.item->size, sizeof(EXTENT_ITEM));
        return;
    }

    ei = (EXTENT_ITEM*)tp.item->data;
    ei->flags = flags;
}
