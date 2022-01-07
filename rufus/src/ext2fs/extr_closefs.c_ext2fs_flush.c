
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;


 int ext2fs_flush2 (int ,int ) ;

errcode_t ext2fs_flush(ext2_filsys fs)
{
 return ext2fs_flush2(fs, 0);
}
