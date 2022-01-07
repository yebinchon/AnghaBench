
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_iterate ;
typedef scalar_t__ ext2_badblocks_iterate ;
typedef int blk_t ;
typedef int __u32 ;


 int ext2fs_u32_list_iterate (int ,int *) ;

int ext2fs_badblocks_list_iterate(ext2_badblocks_iterate iter, blk_t *blk)
{
 return ext2fs_u32_list_iterate((ext2_u32_iterate) iter,
           (__u32 *) blk);
}
