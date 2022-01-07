
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;


 int write_bitmaps (int ,int ,int) ;

errcode_t ext2fs_write_block_bitmap (ext2_filsys fs)
{
 return write_bitmaps(fs, 0, 1);
}
