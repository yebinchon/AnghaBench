
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef scalar_t__ ext2_badblocks_list ;
typedef int errcode_t ;


 int ext2fs_u32_copy (int ,int *) ;

errcode_t ext2fs_badblocks_copy(ext2_badblocks_list src,
    ext2_badblocks_list *dest)
{
 return ext2fs_u32_copy((ext2_u32_list) src,
          (ext2_u32_list *) dest);
}
