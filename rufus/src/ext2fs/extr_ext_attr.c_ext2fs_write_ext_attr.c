
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk_t ;


 int ext2fs_write_ext_attr2 (int ,int ,void*) ;

errcode_t ext2fs_write_ext_attr(ext2_filsys fs, blk_t block, void *inbuf)
{
 return ext2fs_write_ext_attr2(fs, block, inbuf);
}
