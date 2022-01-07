
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;



__attribute__((used)) static inline int ext4_ext_space_block_idx(struct inode *inode, int check)
{
 int size;

 size = (inode->i_sb->s_blocksize - sizeof(struct ext4_extent_header))
  / sizeof(struct ext4_extent_idx);




 return size;
}
