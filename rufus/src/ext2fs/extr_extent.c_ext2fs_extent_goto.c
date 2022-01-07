
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_extent_handle_t ;
typedef int errcode_t ;
typedef int blk64_t ;


 int ext2fs_extent_goto2 (int ,int ,int ) ;

errcode_t ext2fs_extent_goto(ext2_extent_handle_t handle,
        blk64_t blk)
{
 return ext2fs_extent_goto2(handle, 0, blk);
}
