
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk_t ;


 int ext2fs_read_dir_block3 (int ,int ,void*,int ) ;

errcode_t ext2fs_read_dir_block(ext2_filsys fs, blk_t block,
     void *buf)
{
 return ext2fs_read_dir_block3(fs, block, buf, 0);
}
