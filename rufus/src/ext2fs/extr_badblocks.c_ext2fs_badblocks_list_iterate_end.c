
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_iterate ;
typedef scalar_t__ ext2_badblocks_iterate ;


 int ext2fs_u32_list_iterate_end (int ) ;

void ext2fs_badblocks_list_iterate_end(ext2_badblocks_iterate iter)
{
 ext2fs_u32_list_iterate_end((ext2_u32_iterate) iter);
}
