
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef int __u32 ;


 scalar_t__ ext2fs_u32_list_find (int ,int ) ;

int ext2fs_u32_list_test(ext2_u32_list bb, __u32 blk)
{
 if (ext2fs_u32_list_find(bb, blk) < 0)
  return 0;
 else
  return 1;
}
