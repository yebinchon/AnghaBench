
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int errcode_t ;
typedef int __u64 ;


 int ext2fs_resize_generic_bmap (int ,int ,int ) ;

errcode_t ext2fs_resize_block_bitmap2(__u64 new_end, __u64 new_real_end,
          ext2fs_block_bitmap bmap)
{
 return (ext2fs_resize_generic_bmap(bmap, new_end, new_real_end));
}
