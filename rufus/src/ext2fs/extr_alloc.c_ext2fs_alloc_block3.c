
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct blk_alloc_ctx {int dummy; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_9__ {int io; int blocksize; int block_map; scalar_t__ (* get_alloc_block ) (TYPE_1__*,int ,int *) ;scalar_t__ (* get_alloc_block2 ) (TYPE_1__*,int ,int *,struct blk_alloc_ctx*) ;} ;


 int ext2fs_block_alloc_stats2 (TYPE_1__*,int ,int) ;
 scalar_t__ ext2fs_new_block3 (TYPE_1__*,int ,int ,int *,struct blk_alloc_ctx*) ;
 scalar_t__ ext2fs_read_block_bitmap (TYPE_1__*) ;
 scalar_t__ ext2fs_zero_blocks2 (TYPE_1__*,int ,int,int *,int *) ;
 scalar_t__ io_channel_write_blk64 (int ,int ,int,char*) ;
 int memset (char*,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,int ,int *,struct blk_alloc_ctx*) ;
 scalar_t__ stub2 (TYPE_1__*,int ,int *) ;

errcode_t ext2fs_alloc_block3(ext2_filsys fs, blk64_t goal, char *block_buf,
         blk64_t *ret, struct blk_alloc_ctx *ctx)
{
 errcode_t retval;
 blk64_t block;

 if (fs->get_alloc_block2) {
  retval = (fs->get_alloc_block2)(fs, goal, &block, ctx);
  if (retval)
   goto fail;
 } else if (fs->get_alloc_block) {
  retval = (fs->get_alloc_block)(fs, goal, &block);
  if (retval)
   goto fail;
 } else {
  if (!fs->block_map) {
   retval = ext2fs_read_block_bitmap(fs);
   if (retval)
    goto fail;
  }

  retval = ext2fs_new_block3(fs, goal, 0, &block, ctx);
  if (retval)
   goto fail;
 }

 if (block_buf) {
  memset(block_buf, 0, fs->blocksize);
  retval = io_channel_write_blk64(fs->io, block, 1, block_buf);
 } else
  retval = ext2fs_zero_blocks2(fs, block, 1, ((void*)0), ((void*)0));
 if (retval)
  goto fail;

 ext2fs_block_alloc_stats2(fs, block, +1);
 *ret = block;

fail:
 return retval;
}
