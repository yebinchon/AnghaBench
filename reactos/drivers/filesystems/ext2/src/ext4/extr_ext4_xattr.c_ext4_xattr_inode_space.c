
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_xattr_ref {TYPE_2__* OnDiskInode; TYPE_1__* fs; } ;
typedef int __s32 ;
struct TYPE_4__ {int i_extra_isize; } ;
struct TYPE_3__ {int InodeSize; } ;


 int EXT4_GOOD_OLD_INODE_SIZE ;

__attribute__((used)) static __s32 ext4_xattr_inode_space(struct ext4_xattr_ref *xattr_ref)
{
 int inode_size = xattr_ref->fs->InodeSize;
 int size_rem = inode_size - EXT4_GOOD_OLD_INODE_SIZE -
       xattr_ref->OnDiskInode->i_extra_isize;
 return size_rem;
}
