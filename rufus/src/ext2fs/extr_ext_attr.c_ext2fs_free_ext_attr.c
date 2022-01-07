
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct ext2_inode_large {int dummy; } ;
struct ext2_inode {int dummy; } ;
struct ext2_ext_attr_header {scalar_t__ h_magic; scalar_t__ h_refcount; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
struct TYPE_13__ {int blocksize; TYPE_10__* super; } ;
struct TYPE_12__ {scalar_t__ s_first_data_block; } ;


 scalar_t__ EXT2_ET_BAD_EA_BLOCK_NUM ;
 scalar_t__ EXT2_ET_BAD_EA_HEADER ;
 scalar_t__ EXT2_EXT_ATTR_MAGIC ;
 int ext2fs_block_alloc_stats2 (TYPE_1__*,scalar_t__,int) ;
 scalar_t__ ext2fs_blocks_count (TYPE_10__*) ;
 scalar_t__ ext2fs_file_acl_block (TYPE_1__*,struct ext2_inode*) ;
 int ext2fs_file_acl_block_set (TYPE_1__*,struct ext2_inode*,int ) ;
 int ext2fs_free_mem (void**) ;
 scalar_t__ ext2fs_get_mem (int ,void**) ;
 scalar_t__ ext2fs_iblk_sub_blocks (TYPE_1__*,struct ext2_inode*,int) ;
 scalar_t__ ext2fs_read_ext_attr3 (TYPE_1__*,scalar_t__,void*,int ) ;
 scalar_t__ ext2fs_read_inode_full (TYPE_1__*,int ,struct ext2_inode*,int) ;
 scalar_t__ ext2fs_write_ext_attr3 (TYPE_1__*,scalar_t__,void*,int ) ;
 scalar_t__ ext2fs_write_inode_full (TYPE_1__*,int ,struct ext2_inode*,int) ;

errcode_t ext2fs_free_ext_attr(ext2_filsys fs, ext2_ino_t ino,
          struct ext2_inode_large *inode)
{
 struct ext2_ext_attr_header *header;
 void *block_buf = ((void*)0);
 blk64_t blk;
 errcode_t err;
 struct ext2_inode_large i;


 if (inode == ((void*)0)) {
  err = ext2fs_read_inode_full(fs, ino, (struct ext2_inode *)&i,
          sizeof(struct ext2_inode_large));
  if (err)
   return err;
  inode = &i;
 }


 blk = ext2fs_file_acl_block(fs, (struct ext2_inode *)inode);
 if (blk == 0)
  return 0;


 if ((blk < fs->super->s_first_data_block) ||
     (blk >= ext2fs_blocks_count(fs->super))) {
  err = EXT2_ET_BAD_EA_BLOCK_NUM;
  goto out;
 }

 err = ext2fs_get_mem(fs->blocksize, &block_buf);
 if (err)
  goto out;

 err = ext2fs_read_ext_attr3(fs, blk, block_buf, ino);
 if (err)
  goto out2;


 header = (struct ext2_ext_attr_header *) block_buf;
 if (header->h_magic != EXT2_EXT_ATTR_MAGIC) {
  err = EXT2_ET_BAD_EA_HEADER;
  goto out2;
 }

 header->h_refcount--;
 err = ext2fs_write_ext_attr3(fs, blk, block_buf, ino);
 if (err)
  goto out2;


 ext2fs_file_acl_block_set(fs, (struct ext2_inode *)inode, 0);
 if (header->h_refcount == 0)
  ext2fs_block_alloc_stats2(fs, blk, -1);
 err = ext2fs_iblk_sub_blocks(fs, (struct ext2_inode *)inode, 1);
 if (err)
  goto out2;


 if (inode == &i) {
  err = ext2fs_write_inode_full(fs, ino, (struct ext2_inode *)&i,
           sizeof(struct ext2_inode_large));
  if (err)
   goto out2;
 }

out2:
 ext2fs_free_mem(&block_buf);
out:
 return err;
}
