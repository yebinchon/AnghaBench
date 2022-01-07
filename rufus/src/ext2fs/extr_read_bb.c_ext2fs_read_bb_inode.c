
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct read_bb_record {scalar_t__ err; scalar_t__ bb_list; } ;
struct ext2_inode {int i_blocks; int i_flags; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ ext2_badblocks_list ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
struct TYPE_6__ {int blocksize; int super; } ;


 int BLOCK_FLAG_READ_ONLY ;
 int EXT2_BAD_INO ;
 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 int EXT4_HUGE_FILE_FL ;
 scalar_t__ ext2fs_badblocks_list_create (scalar_t__*,int) ;
 scalar_t__ ext2fs_block_iterate2 (TYPE_1__*,int ,int ,int ,int ,struct read_bb_record*) ;
 scalar_t__ ext2fs_has_feature_huge_file (int ) ;
 scalar_t__ ext2fs_read_inode (TYPE_1__*,int ,struct ext2_inode*) ;
 int mark_bad_block ;

errcode_t ext2fs_read_bb_inode(ext2_filsys fs, ext2_badblocks_list *bb_list)
{
 errcode_t retval;
 struct read_bb_record rb;
 struct ext2_inode inode;
 blk_t numblocks;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 if (!*bb_list) {
  retval = ext2fs_read_inode(fs, EXT2_BAD_INO, &inode);
  if (retval)
   return retval;
  numblocks = inode.i_blocks;
  if (!(ext2fs_has_feature_huge_file(fs->super) &&
        (inode.i_flags & EXT4_HUGE_FILE_FL)))
   numblocks = numblocks / (fs->blocksize / 512);
  numblocks += 20;
  if (numblocks < 50)
   numblocks = 50;
  if (numblocks > 50000)
   numblocks = 500;
  retval = ext2fs_badblocks_list_create(bb_list, numblocks);
  if (retval)
   return retval;
 }

 rb.bb_list = *bb_list;
 rb.err = 0;
 retval = ext2fs_block_iterate2(fs, EXT2_BAD_INO, BLOCK_FLAG_READ_ONLY,
           0, mark_bad_block, &rb);
 if (retval)
  return retval;

 return rb.err;
}
