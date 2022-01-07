
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct ext2_inode {int i_size; int i_flags; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_11__ {int blocksize; int super; } ;


 int BMAP_SET ;
 int EXT4_EXTENTS_FL ;
 int EXT4_INLINE_DATA_DOTDOT_SIZE ;
 int EXT4_INLINE_DATA_FL ;
 int ext2fs_block_alloc_stats (TYPE_1__*,int ,int) ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,struct ext2_inode*,int ,int ,int ,int ,int *) ;
 scalar_t__ ext2fs_dirent_swab_in2 (TYPE_1__*,char*,size_t,int ) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_memzero (int ,char**) ;
 scalar_t__ ext2fs_has_feature_extents (int ) ;
 scalar_t__ ext2fs_iblk_add_blocks (TYPE_1__*,struct ext2_inode*,int) ;
 scalar_t__ ext2fs_inline_data_convert_dir (TYPE_1__*,int ,char*,char*,size_t) ;
 scalar_t__ ext2fs_new_block2 (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ ext2fs_write_dir_block4 (TYPE_1__*,int ,char*,int ,int ) ;
 scalar_t__ ext2fs_write_inode (TYPE_1__*,int ,struct ext2_inode*) ;

__attribute__((used)) static errcode_t
ext2fs_inline_data_dir_expand(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode, char *buf, size_t size)
{
 errcode_t retval;
 blk64_t blk;
 char *blk_buf;

 retval = ext2fs_get_memzero(fs->blocksize, &blk_buf);
 if (retval)
  return retval;
 retval = ext2fs_inline_data_convert_dir(fs, ino, blk_buf, buf, size);
 if (retval)
  goto errout;

 retval = ext2fs_new_block2(fs, 0, 0, &blk);
 if (retval)
  goto errout;
 retval = ext2fs_write_dir_block4(fs, blk, blk_buf, 0, ino);
 if (retval)
  goto errout;


 if (ext2fs_has_feature_extents(fs->super))
  inode->i_flags |= EXT4_EXTENTS_FL;
 inode->i_flags &= ~EXT4_INLINE_DATA_FL;
 retval = ext2fs_iblk_add_blocks(fs, inode, 1);
 if (retval)
  goto errout;
 inode->i_size = fs->blocksize;
 retval = ext2fs_bmap2(fs, ino, inode, 0, BMAP_SET, 0, 0, &blk);
 if (retval)
  goto errout;
 retval = ext2fs_write_inode(fs, ino, inode);
 if (retval)
  goto errout;
 ext2fs_block_alloc_stats(fs, blk, +1);

errout:
 ext2fs_free_mem(&blk_buf);
 return retval;
}
