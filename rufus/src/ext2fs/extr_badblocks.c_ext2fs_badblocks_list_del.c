
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef int __u32 ;


 int ext2fs_u32_list_del (int ,int ) ;

void ext2fs_badblocks_list_del(ext2_u32_list bb, __u32 blk)
{
 ext2fs_u32_list_del(bb, blk);
}
