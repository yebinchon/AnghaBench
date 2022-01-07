
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_xattr_ref {int block_loaded; int IsOnDiskInodeDirty; TYPE_1__* inode_ref; int IrpContext; int * block_bh; } ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_4__ {scalar_t__ i_file_acl; } ;
struct TYPE_3__ {TYPE_2__ Inode; } ;


 int FALSE ;
 int TRUE ;
 int ext4_free_blocks (int ,TYPE_2__*,scalar_t__,int,int ) ;
 int extents_brelse (int *) ;

__attribute__((used)) static void ext4_xattr_try_free_block(struct ext4_xattr_ref *xattr_ref)
{
 ext4_fsblk_t xattr_block;
 xattr_block = xattr_ref->inode_ref->Inode.i_file_acl;
 xattr_ref->inode_ref->Inode.i_file_acl = 0;
 extents_brelse(xattr_ref->block_bh);
 xattr_ref->block_bh = ((void*)0);
 ext4_free_blocks(xattr_ref->IrpContext, &xattr_ref->inode_ref->Inode,
  xattr_block, 1, 0);
 xattr_ref->IsOnDiskInodeDirty = TRUE;
 xattr_ref->block_loaded = FALSE;
}
