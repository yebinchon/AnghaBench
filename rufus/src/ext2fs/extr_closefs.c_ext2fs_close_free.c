
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ext2_filsys ;
typedef scalar_t__ errcode_t ;


 scalar_t__ ext2fs_close2 (int *,int ) ;
 int ext2fs_free (int *) ;

errcode_t ext2fs_close_free(ext2_filsys *fs_ptr)
{
 errcode_t ret;
 ext2_filsys fs = *fs_ptr;

 ret = ext2fs_close2(fs, 0);
 if (ret)
  ext2fs_free(fs);
 *fs_ptr = ((void*)0);
 return ret;
}
