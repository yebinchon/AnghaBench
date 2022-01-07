
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {scalar_t__ i_block; } ;
struct ext2_inline_data {size_t ea_size; int ea_data; int ino; int fs; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;


 size_t EXT4_MIN_INLINE_DATA_SIZE ;
 int ext2fs_free_mem (int *) ;
 scalar_t__ ext2fs_inline_data_ea_get (struct ext2_inline_data*) ;
 scalar_t__ ext2fs_read_inode (int ,int ,struct ext2_inode*) ;
 int memcpy (char*,void*,size_t) ;

errcode_t ext2fs_inline_data_get(ext2_filsys fs, ext2_ino_t ino,
     struct ext2_inode *inode,
     void *buf, size_t *size)
{
 struct ext2_inode inode_buf;
 struct ext2_inline_data data;
 errcode_t retval;

 if (!inode) {
  retval = ext2fs_read_inode(fs, ino, &inode_buf);
  if (retval)
   return retval;
  inode = &inode_buf;
 }

 data.fs = fs;
 data.ino = ino;
 retval = ext2fs_inline_data_ea_get(&data);
 if (retval)
  return retval;

 memcpy(buf, (void *)inode->i_block, EXT4_MIN_INLINE_DATA_SIZE);
 if (data.ea_size > 0)
  memcpy((char *) buf + EXT4_MIN_INLINE_DATA_SIZE,
         data.ea_data, data.ea_size);

 if (size)
  *size = EXT4_MIN_INLINE_DATA_SIZE + data.ea_size;
 ext2fs_free_mem(&data.ea_data);
 return 0;
}
