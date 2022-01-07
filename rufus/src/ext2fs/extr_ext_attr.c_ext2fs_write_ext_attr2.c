
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk64_t ;


 int ext2fs_write_ext_attr3 (int ,int ,void*,int ) ;

errcode_t ext2fs_write_ext_attr2(ext2_filsys fs, blk64_t block, void *inbuf)
{
 return ext2fs_write_ext_attr3(fs, block, inbuf, 0);
}
