
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct ext4_xattr_ref {int inode_size_rem; int block_size_rem; int IrpContext; int OnDiskInode; int * block_bh; void* IsOnDiskInodeDirty; int ordered_list; TYPE_1__* fs; TYPE_2__* inode_ref; void* block_loaded; int * iter_from; scalar_t__ ea_size; int root; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_header {int dummy; } ;
typedef scalar_t__ ext4_fsblk_t ;
typedef int __u32 ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;
struct TYPE_10__ {TYPE_6__ Inode; } ;
struct TYPE_9__ {int sb; } ;
typedef TYPE_1__* PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;


 int EIO ;
 int ENOMEM ;
 int Ext2AllocateInode (TYPE_1__*) ;
 int Ext2DestroyInode (TYPE_1__*,int ) ;
 int Ext2LoadInodeXattr (TYPE_1__*,TYPE_6__*,int ) ;
 void* FALSE ;
 int INIT_LIST_HEAD (int *) ;
 void* TRUE ;
 int ext4_xattr_block_space (struct ext4_xattr_ref*) ;
 int ext4_xattr_fetch (struct ext4_xattr_ref*) ;
 int ext4_xattr_inode_space (struct ext4_xattr_ref*) ;
 int ext4_xattr_purge_items (struct ext4_xattr_ref*) ;
 int * extents_bread (int *,scalar_t__) ;
 int extents_brelse (int *) ;
 int memset (int *,int ,int) ;

int ext4_fs_get_xattr_ref(PEXT2_IRP_CONTEXT IrpContext, PEXT2_VCB fs, PEXT2_MCB inode_ref,
     struct ext4_xattr_ref *ref)
{
 int rc;
 ext4_fsblk_t xattr_block;
 xattr_block = inode_ref->Inode.i_file_acl;
 memset(&ref->root, 0, sizeof(struct rb_root));
 ref->ea_size = 0;
 ref->iter_from = ((void*)0);
 if (xattr_block) {
  ref->block_bh = extents_bread(&fs->sb, xattr_block);
  if (!ref->block_bh)
   return -EIO;

  ref->block_loaded = TRUE;
 } else
  ref->block_loaded = FALSE;

 ref->inode_ref = inode_ref;
 ref->fs = fs;
 INIT_LIST_HEAD(&ref->ordered_list);

 ref->OnDiskInode = Ext2AllocateInode(fs);
 if (!ref->OnDiskInode) {
  if (xattr_block) {
   extents_brelse(ref->block_bh);
   ref->block_bh = ((void*)0);
  }
  return -ENOMEM;
 }
 if (!Ext2LoadInodeXattr(fs, &inode_ref->Inode, ref->OnDiskInode)) {
  if (xattr_block) {
   extents_brelse(ref->block_bh);
   ref->block_bh = ((void*)0);
  }

  Ext2DestroyInode(fs, ref->OnDiskInode);
  return -EIO;
 }
 ref->IsOnDiskInodeDirty = FALSE;

 if (ext4_xattr_inode_space(ref) <
    sizeof(struct ext4_xattr_ibody_header) +
    sizeof(__u32))
  ref->inode_size_rem = 0;
 else {
  ref->inode_size_rem =
   ext4_xattr_inode_space(ref) -
   sizeof(struct ext4_xattr_ibody_header);
 }

 ref->block_size_rem =
  ext4_xattr_block_space(ref) -
  sizeof(struct ext4_xattr_header) -
  sizeof(__u32);

 rc = ext4_xattr_fetch(ref);
 if (rc != 0) {
  ext4_xattr_purge_items(ref);
  if (xattr_block) {
   extents_brelse(ref->block_bh);
   ref->block_bh = ((void*)0);
  }

  Ext2DestroyInode(fs, ref->OnDiskInode);
  return rc;
 }
 ref->IrpContext = IrpContext;
 return 0;
}
