
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct opaque_ext2_group_desc {unsigned long s_state; int s_first_meta_bg; int s_feature_incompat; scalar_t__ s_block_group_nr; scalar_t__ s_wtime; } ;
struct ext2fs_numeric_progress_struct {int dummy; } ;
struct ext2_super_block {unsigned long s_state; int s_first_meta_bg; int s_feature_incompat; scalar_t__ s_block_group_nr; scalar_t__ s_wtime; } ;
struct ext2_group_desc {int dummy; } ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ dgrp_t ;
typedef int blk64_t ;
typedef int __u32 ;
struct TYPE_16__ {size_t desc_blocks; int blocksize; scalar_t__ group_desc_count; int flags; struct opaque_ext2_group_desc* super; int io; TYPE_1__* progress_ops; struct opaque_ext2_group_desc* group_desc; scalar_t__ (* write_bitmaps ) (TYPE_2__*) ;scalar_t__ now; } ;
struct TYPE_15__ {int (* close ) (TYPE_2__*,struct ext2fs_numeric_progress_struct*,int *) ;int (* update ) (TYPE_2__*,struct ext2fs_numeric_progress_struct*,scalar_t__) ;int (* init ) (TYPE_2__*,struct ext2fs_numeric_progress_struct*,int *,scalar_t__) ;} ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_DESC_PER_BLOCK (struct opaque_ext2_group_desc*) ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 scalar_t__ EXT2_ET_NO_MEMORY ;
 int EXT2_FLAG_DIRTY ;
 int EXT2_FLAG_FLUSH_NO_SYNC ;
 int EXT2_FLAG_MASTER_SB_ONLY ;
 int EXT2_FLAG_SUPER_ONLY ;
 unsigned long EXT2_VALID_FS ;
 int SUPERBLOCK_SIZE ;
 int ext2fs_clear_feature_journal_needs_recovery (struct opaque_ext2_group_desc*) ;
 int ext2fs_free_mem (struct opaque_ext2_group_desc**) ;
 scalar_t__ ext2fs_get_array (size_t,int,struct opaque_ext2_group_desc**) ;
 scalar_t__ ext2fs_get_mem (int ,struct opaque_ext2_group_desc**) ;
 struct ext2_group_desc* ext2fs_group_desc (TYPE_2__*,struct opaque_ext2_group_desc*,scalar_t__) ;
 scalar_t__ ext2fs_has_feature_journal_dev (struct opaque_ext2_group_desc*) ;
 scalar_t__ ext2fs_has_feature_meta_bg (struct opaque_ext2_group_desc*) ;
 int ext2fs_super_and_bgd_loc2 (TYPE_2__*,scalar_t__,int*,int*,int*,int ) ;
 scalar_t__ ext2fs_superblock_csum_set (TYPE_2__*,struct opaque_ext2_group_desc*) ;
 int ext2fs_swap_group_desc2 (TYPE_2__*,struct ext2_group_desc*) ;
 int ext2fs_swap_super (struct opaque_ext2_group_desc*) ;
 scalar_t__ io_channel_flush (int ) ;
 scalar_t__ io_channel_write_blk64 (int ,int,int,char*) ;
 int memcpy (struct opaque_ext2_group_desc*,struct opaque_ext2_group_desc*,size_t) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,struct ext2fs_numeric_progress_struct*,int *,scalar_t__) ;
 int stub3 (TYPE_2__*,struct ext2fs_numeric_progress_struct*,scalar_t__) ;
 int stub4 (TYPE_2__*,struct ext2fs_numeric_progress_struct*,int *) ;
 scalar_t__ time (int *) ;
 scalar_t__ write_backup_super (TYPE_2__*,scalar_t__,int,struct opaque_ext2_group_desc*) ;
 scalar_t__ write_primary_superblock (TYPE_2__*,struct opaque_ext2_group_desc*) ;

errcode_t ext2fs_flush2(ext2_filsys fs, int flags)
{
 dgrp_t i;
 errcode_t retval;
 unsigned long fs_state;
 __u32 feature_incompat;
 struct ext2_super_block *super_shadow = 0;
 struct opaque_ext2_group_desc *group_shadow = 0;




 char *group_ptr;
 blk64_t old_desc_blocks;
 struct ext2fs_numeric_progress_struct progress;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 fs_state = fs->super->s_state;
 feature_incompat = fs->super->s_feature_incompat;

 fs->super->s_wtime = fs->now ? fs->now : time(((void*)0));
 fs->super->s_block_group_nr = 0;
 if (fs->write_bitmaps) {
  retval = fs->write_bitmaps(fs);
  if (retval)
   goto errout;
 }






 fs->super->s_state &= ~EXT2_VALID_FS;
 ext2fs_clear_feature_journal_needs_recovery(fs->super);
 super_shadow = fs->super;
 group_shadow = fs->group_desc;






 if (ext2fs_has_feature_journal_dev(fs->super))
  goto write_primary_superblock_only;





 group_ptr = (char *) group_shadow;
 if (ext2fs_has_feature_meta_bg(fs->super)) {
  old_desc_blocks = fs->super->s_first_meta_bg;
  if (old_desc_blocks > fs->desc_blocks)
   old_desc_blocks = fs->desc_blocks;
 } else
  old_desc_blocks = fs->desc_blocks;

 if (fs->progress_ops && fs->progress_ops->init)
  (fs->progress_ops->init)(fs, &progress, ((void*)0),
      fs->group_desc_count);


 for (i = 0; i < fs->group_desc_count; i++) {
  blk64_t super_blk, old_desc_blk, new_desc_blk;

  if (fs->progress_ops && fs->progress_ops->update)
   (fs->progress_ops->update)(fs, &progress, i);
  ext2fs_super_and_bgd_loc2(fs, i, &super_blk, &old_desc_blk,
      &new_desc_blk, 0);

  if (!(fs->flags & EXT2_FLAG_MASTER_SB_ONLY) &&i && super_blk) {
   retval = write_backup_super(fs, i, super_blk,
          super_shadow);
   if (retval)
    goto errout;
  }
  if (fs->flags & EXT2_FLAG_SUPER_ONLY)
   continue;
  if ((old_desc_blk) &&
      (!(fs->flags & EXT2_FLAG_MASTER_SB_ONLY) || (i == 0))) {
   retval = io_channel_write_blk64(fs->io,
         old_desc_blk, old_desc_blocks, group_ptr);
   if (retval)
    goto errout;
  }
  if (new_desc_blk) {
   int meta_bg = i / EXT2_DESC_PER_BLOCK(fs->super);

   retval = io_channel_write_blk64(fs->io, new_desc_blk,
    1, group_ptr + (meta_bg*fs->blocksize));
   if (retval)
    goto errout;
  }
 }

 if (fs->progress_ops && fs->progress_ops->close)
  (fs->progress_ops->close)(fs, &progress, ((void*)0));

write_primary_superblock_only:
 fs->super->s_block_group_nr = 0;
 fs->super->s_state = fs_state;
 fs->super->s_feature_incompat = feature_incompat;





 retval = ext2fs_superblock_csum_set(fs, super_shadow);
 if (retval)
  return retval;

 if (!(flags & EXT2_FLAG_FLUSH_NO_SYNC)) {
  retval = io_channel_flush(fs->io);
  if (retval)
   goto errout;
 }
 retval = write_primary_superblock(fs, super_shadow);
 if (retval)
  goto errout;

 fs->flags &= ~EXT2_FLAG_DIRTY;

 if (!(flags & EXT2_FLAG_FLUSH_NO_SYNC)) {
  retval = io_channel_flush(fs->io);
  if (retval)
   goto errout;
 }
errout:
 fs->super->s_state = fs_state;






 return retval;
}
