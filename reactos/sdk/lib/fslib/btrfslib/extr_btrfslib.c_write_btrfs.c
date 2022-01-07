
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int btrfs_root ;
struct TYPE_7__ {int dev_id; } ;
struct TYPE_6__ {TYPE_4__ dev_item; } ;
typedef TYPE_1__ btrfs_dev ;
typedef int btrfs_chunk ;
typedef int ULONG ;
typedef int PUNICODE_STRING ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef int HANDLE ;
typedef int DEV_ITEM ;
typedef int BTRFS_UUID ;
typedef scalar_t__ BOOL ;


 int BLOCK_FLAG_DATA ;
 int BLOCK_FLAG_DUPLICATE ;
 int BLOCK_FLAG_METADATA ;
 int BLOCK_FLAG_SYSTEM ;
 int BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS ;
 int BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA ;
 int BTRFS_ROOT_CHECKSUM ;
 int BTRFS_ROOT_CHUNK ;
 int BTRFS_ROOT_DATA_RELOC ;
 int BTRFS_ROOT_DEVTREE ;
 int BTRFS_ROOT_EXTENT ;
 int BTRFS_ROOT_FSTREE ;
 int BTRFS_ROOT_ROOT ;
 int InitializeListHead (int *) ;
 int NT_SUCCESS (int ) ;
 int NtGetTickCount () ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int TYPE_DEV_ITEM ;
 int add_block_group_items (int *,int *) ;
 int * add_chunk (int *,int,int *,TYPE_1__*,int *,int *,int ) ;
 int add_item (int *,int,int ,int ,TYPE_4__*,int) ;
 int * add_root (int *,int ) ;
 int assign_addresses (int *,int *,int *,int ,int *,int *,int) ;
 int clear_first_megabyte (int ) ;
 int free_chunks (int *) ;
 int free_roots (int *) ;
 int get_uuid (int *,...) ;
 int init_device (TYPE_1__*,int,int,int *,int ,...) ;
 int init_fs_tree (int *,int ) ;
 scalar_t__ is_ssd (int ) ;
 int set_default_subvol (int *,int ) ;
 int srand (unsigned int) ;
 scalar_t__ time (int ) ;
 int write_roots (int ,int *,int ,int *,int *) ;
 int write_superblocks (int ,TYPE_1__*,int *,int *,int *,int *,int ,int *,int ,int ,int) ;

__attribute__((used)) static NTSTATUS write_btrfs(HANDLE h, uint64_t size, PUNICODE_STRING label, uint32_t sector_size, uint32_t node_size, uint64_t incompat_flags) {
    NTSTATUS Status;
    LIST_ENTRY roots, chunks;
    btrfs_root *root_root, *chunk_root, *extent_root, *dev_root, *fs_root, *reloc_root;
    btrfs_chunk *sys_chunk, *metadata_chunk;
    btrfs_dev dev;
    BTRFS_UUID fsuuid, chunkuuid;
    BOOL ssd;
    uint64_t metadata_flags;





    srand((unsigned int)time(0));
    get_uuid(&fsuuid);
    get_uuid(&chunkuuid);






    InitializeListHead(&roots);
    InitializeListHead(&chunks);

    root_root = add_root(&roots, BTRFS_ROOT_ROOT);
    chunk_root = add_root(&roots, BTRFS_ROOT_CHUNK);
    extent_root = add_root(&roots, BTRFS_ROOT_EXTENT);
    dev_root = add_root(&roots, BTRFS_ROOT_DEVTREE);
    add_root(&roots, BTRFS_ROOT_CHECKSUM);
    fs_root = add_root(&roots, BTRFS_ROOT_FSTREE);
    reloc_root = add_root(&roots, BTRFS_ROOT_DATA_RELOC);


    init_device(&dev, 1, size, &fsuuid, sector_size);




    ssd = is_ssd(h);

    sys_chunk = add_chunk(&chunks, BLOCK_FLAG_SYSTEM | (ssd ? 0 : BLOCK_FLAG_DUPLICATE), chunk_root, &dev, dev_root, &chunkuuid, sector_size);
    if (!sys_chunk)
        return STATUS_INTERNAL_ERROR;

    metadata_flags = BLOCK_FLAG_METADATA;

    if (!ssd && !(incompat_flags & BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS))
        metadata_flags |= BLOCK_FLAG_DUPLICATE;

    if (incompat_flags & BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS)
        metadata_flags |= BLOCK_FLAG_DATA;

    metadata_chunk = add_chunk(&chunks, metadata_flags, chunk_root, &dev, dev_root, &chunkuuid, sector_size);
    if (!metadata_chunk)
        return STATUS_INTERNAL_ERROR;

    add_item(chunk_root, 1, TYPE_DEV_ITEM, dev.dev_item.dev_id, &dev.dev_item, sizeof(DEV_ITEM));

    set_default_subvol(root_root, node_size);

    init_fs_tree(fs_root, node_size);
    init_fs_tree(reloc_root, node_size);

    assign_addresses(&roots, sys_chunk, metadata_chunk, node_size, root_root, extent_root, incompat_flags & BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA);

    add_block_group_items(&chunks, extent_root);

    Status = write_roots(h, &roots, node_size, &fsuuid, &chunkuuid);
    if (!NT_SUCCESS(Status))
        return Status;

    Status = clear_first_megabyte(h);
    if (!NT_SUCCESS(Status))
        return Status;

    Status = write_superblocks(h, &dev, chunk_root, root_root, extent_root, sys_chunk, node_size, &fsuuid, sector_size, label, incompat_flags);
    if (!NT_SUCCESS(Status))
        return Status;

    free_roots(&roots);
    free_chunks(&chunks);

    return STATUS_SUCCESS;
}
