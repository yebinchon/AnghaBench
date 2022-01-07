
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef int ext2_u32_iterate ;
typedef scalar_t__ ext2_badblocks_list ;
typedef int ext2_badblocks_iterate ;
typedef int errcode_t ;


 int ext2fs_u32_list_iterate_begin (int ,int *) ;

errcode_t ext2fs_badblocks_list_iterate_begin(ext2_badblocks_list bb,
           ext2_badblocks_iterate *ret)
{
 return ext2fs_u32_list_iterate_begin((ext2_u32_list) bb,
           (ext2_u32_iterate *) ret);
}
