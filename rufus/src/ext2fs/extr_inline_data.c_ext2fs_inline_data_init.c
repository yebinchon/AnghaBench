
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inline_data {char* ea_data; scalar_t__ ea_size; int ino; int fs; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int errcode_t ;


 int ext2fs_inline_data_ea_set (struct ext2_inline_data*) ;

errcode_t ext2fs_inline_data_init(ext2_filsys fs, ext2_ino_t ino)
{
 struct ext2_inline_data data;
 char empty[1] = { '\0' };

 data.fs = fs;
 data.ino = ino;
 data.ea_size = 0;
 data.ea_data = empty;
 return ext2fs_inline_data_ea_set(&data);
}
