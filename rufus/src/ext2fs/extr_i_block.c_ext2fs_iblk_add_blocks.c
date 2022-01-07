
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long long l_i_blocks_hi; } ;
struct TYPE_7__ {TYPE_1__ linux2; } ;
struct ext2_inode {unsigned long long i_blocks; int i_flags; TYPE_2__ osd2; } ;
typedef TYPE_3__* ext2_filsys ;
typedef int errcode_t ;
typedef int blk64_t ;
struct TYPE_8__ {int blocksize; int super; } ;


 int EOVERFLOW ;
 int EXT2FS_CLUSTER_RATIO (TYPE_3__*) ;
 int EXT4_HUGE_FILE_FL ;
 scalar_t__ ext2fs_has_feature_huge_file (int ) ;

errcode_t ext2fs_iblk_add_blocks(ext2_filsys fs, struct ext2_inode *inode,
     blk64_t num_blocks)
{
 unsigned long long b = inode->i_blocks;

 if (ext2fs_has_feature_huge_file(fs->super))
  b += ((long long) inode->osd2.linux2.l_i_blocks_hi) << 32;

 if (!ext2fs_has_feature_huge_file(fs->super) ||
     !(inode->i_flags & EXT4_HUGE_FILE_FL))
     num_blocks *= fs->blocksize / 512;
 num_blocks *= EXT2FS_CLUSTER_RATIO(fs);

 b += num_blocks;

 if (ext2fs_has_feature_huge_file(fs->super))
  inode->osd2.linux2.l_i_blocks_hi = b >> 32;
 else if (b > 0xFFFFFFFF)
  return EOVERFLOW;
 inode->i_blocks = b & 0xFFFFFFFF;
 return 0;
}
