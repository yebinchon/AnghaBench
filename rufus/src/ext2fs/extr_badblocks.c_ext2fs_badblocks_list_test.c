
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef scalar_t__ ext2_badblocks_list ;
typedef scalar_t__ blk_t ;
typedef int __u32 ;


 int ext2fs_u32_list_test (int ,int ) ;

int ext2fs_badblocks_list_test(ext2_badblocks_list bb, blk_t blk)
{
 return ext2fs_u32_list_test((ext2_u32_list) bb, (__u32) blk);
}
