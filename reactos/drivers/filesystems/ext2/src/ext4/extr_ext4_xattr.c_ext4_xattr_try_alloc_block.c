
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ext4_xattr_ref {void* block_loaded; void* IsOnDiskInodeDirty; TYPE_2__* inode_ref; int IrpContext; int block_bh; TYPE_1__* fs; } ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {scalar_t__ i_file_acl; } ;
struct TYPE_7__ {TYPE_3__ Inode; } ;
struct TYPE_6__ {int sb; } ;


 int ENOMEM ;
 void* TRUE ;
 int ext4_free_blocks (int ,TYPE_3__*,scalar_t__,int,int ) ;
 scalar_t__ ext4_inode_to_goal_block (TYPE_3__*) ;
 scalar_t__ ext4_new_meta_blocks (int ,TYPE_3__*,scalar_t__,int ,int *,int*) ;
 int extents_bwrite (int *,scalar_t__) ;

__attribute__((used)) static int ext4_xattr_try_alloc_block(struct ext4_xattr_ref *xattr_ref)
{
 int ret = 0;

 ext4_fsblk_t xattr_block = 0;
 xattr_block = xattr_ref->inode_ref->Inode.i_file_acl;
 if (!xattr_block) {
  ext4_fsblk_t goal =
   ext4_inode_to_goal_block(&xattr_ref->inode_ref->Inode);

  xattr_block = ext4_new_meta_blocks(xattr_ref->IrpContext,
        &xattr_ref->inode_ref->Inode,
           goal, 0, ((void*)0),
           &ret);
  if (ret != 0)
   goto Finish;

  xattr_ref->block_bh = extents_bwrite(&xattr_ref->fs->sb, xattr_block);
  if (!xattr_ref->block_bh) {
   ext4_free_blocks(xattr_ref->IrpContext, &xattr_ref->inode_ref->Inode,
            xattr_block, 1, 0);
   ret = -ENOMEM;
   goto Finish;
  }

  xattr_ref->inode_ref->Inode.i_file_acl = xattr_block;
  xattr_ref->IsOnDiskInodeDirty = TRUE;
  xattr_ref->block_loaded = TRUE;
 }

Finish:
 return ret;
}
