
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;


 int read_bitmaps (int ,int ,int) ;

errcode_t ext2fs_read_block_bitmap(ext2_filsys fs)
{
 return read_bitmaps(fs, 0, 1);
}
