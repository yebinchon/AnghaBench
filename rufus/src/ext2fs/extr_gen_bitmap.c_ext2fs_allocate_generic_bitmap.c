
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_generic_bitmap ;
typedef int errcode_t ;
typedef int __u32 ;


 int EXT2_ET_MAGIC_GENERIC_BITMAP ;
 int ext2fs_make_generic_bitmap (int ,int ,int ,int ,int ,char const*,int ,int *) ;

errcode_t ext2fs_allocate_generic_bitmap(__u32 start,
      __u32 end,
      __u32 real_end,
      const char *descr,
      ext2fs_generic_bitmap *ret)
{
 return ext2fs_make_generic_bitmap(EXT2_ET_MAGIC_GENERIC_BITMAP, 0,
       start, end, real_end, descr, 0, ret);
}
