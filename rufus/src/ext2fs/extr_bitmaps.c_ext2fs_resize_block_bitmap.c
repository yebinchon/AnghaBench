
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int errcode_t ;
typedef int __u32 ;


 int EXT2_ET_MAGIC_BLOCK_BITMAP ;
 int ext2fs_resize_generic_bitmap (int ,int ,int ,int ) ;

errcode_t ext2fs_resize_block_bitmap(__u32 new_end, __u32 new_real_end,
         ext2fs_block_bitmap bmap)
{
 return (ext2fs_resize_generic_bitmap(EXT2_ET_MAGIC_BLOCK_BITMAP,
          new_end, new_real_end, bmap));
}
