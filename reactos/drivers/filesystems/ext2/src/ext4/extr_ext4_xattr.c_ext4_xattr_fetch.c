
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_xattr_ref {int dirty; scalar_t__ block_loaded; TYPE_1__* fs; } ;
struct TYPE_2__ {int InodeSize; } ;


 int EXT4_GOOD_OLD_INODE_SIZE ;
 int FALSE ;
 int ext4_xattr_block_fetch (struct ext4_xattr_ref*) ;
 int ext4_xattr_inode_fetch (struct ext4_xattr_ref*) ;

__attribute__((used)) static int ext4_xattr_fetch(struct ext4_xattr_ref *xattr_ref)
{
 int ret = 0;
 int inode_size = xattr_ref->fs->InodeSize;
 if (inode_size > EXT4_GOOD_OLD_INODE_SIZE) {
  ret = ext4_xattr_inode_fetch(xattr_ref);
  if (ret != 0)
   return ret;
 }

 if (xattr_ref->block_loaded)
  ret = ext4_xattr_block_fetch(xattr_ref);

 xattr_ref->dirty = FALSE;
 return ret;
}
