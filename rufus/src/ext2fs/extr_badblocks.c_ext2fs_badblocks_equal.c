
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef scalar_t__ ext2_badblocks_list ;


 int ext2fs_u32_list_equal (int ,int ) ;

int ext2fs_badblocks_equal(ext2_badblocks_list bb1, ext2_badblocks_list bb2)
{
 return ext2fs_u32_list_equal((ext2_u32_list) bb1,
         (ext2_u32_list) bb2);
}
