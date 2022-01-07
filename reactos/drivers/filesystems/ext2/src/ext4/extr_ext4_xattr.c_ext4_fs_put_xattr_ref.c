
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ext4_xattr_ref {TYPE_2__* fs; TYPE_1__* inode_ref; int * OnDiskInode; void* block_loaded; int * block_bh; void* IsOnDiskInodeDirty; int IrpContext; } ;
typedef int sector_t ;
struct TYPE_9__ {int i_file_acl; } ;
struct TYPE_8__ {scalar_t__ InodeSize; } ;
struct TYPE_7__ {TYPE_3__ Inode; } ;


 int ASSERT (int) ;
 int EIO ;
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ;
 int Ext2DestroyInode (TYPE_2__*,int *) ;
 scalar_t__ Ext2SaveInode (int ,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ Ext2SaveInodeXattr (int ,TYPE_2__*,TYPE_3__*,int *) ;
 void* FALSE ;
 int ext4_xattr_purge_items (struct ext4_xattr_ref*) ;
 int ext4_xattr_write_to_disk (struct ext4_xattr_ref*) ;
 int extents_bforget (int *) ;
 int extents_brelse (int *) ;

int ext4_fs_put_xattr_ref(struct ext4_xattr_ref *ref)
{
 int ret;
 sector_t orig_file_acl = ref->inode_ref->Inode.i_file_acl;
 ret = ext4_xattr_write_to_disk(ref);
 if (ref->IsOnDiskInodeDirty) {
  ASSERT(ref->fs->InodeSize > EXT4_GOOD_OLD_INODE_SIZE);


  if (ret)
   ref->inode_ref->Inode.i_file_acl = orig_file_acl;

  if (!ret) {
   ret = Ext2SaveInode(ref->IrpContext, ref->fs, &ref->inode_ref->Inode)
    ? 0 : -EIO;
   if (!ret) {
    ret = Ext2SaveInodeXattr(ref->IrpContext,
      ref->fs,
      &ref->inode_ref->Inode,
      ref->OnDiskInode)
     ? 0 : -EIO;
   }
  }
  ref->IsOnDiskInodeDirty = FALSE;
 }
 if (ref->block_loaded) {
  if (!ret)
   extents_brelse(ref->block_bh);
  else
   extents_bforget(ref->block_bh);

  ref->block_bh = ((void*)0);
  ref->block_loaded = FALSE;
 }
 ext4_xattr_purge_items(ref);
 Ext2DestroyInode(ref->fs, ref->OnDiskInode);
 ref->OnDiskInode = ((void*)0);
 ref->inode_ref = ((void*)0);
 ref->fs = ((void*)0);
 return ret;
}
