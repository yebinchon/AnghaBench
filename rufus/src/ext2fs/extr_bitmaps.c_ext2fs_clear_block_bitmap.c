
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;


 int ext2fs_clear_generic_bmap (int ) ;

void ext2fs_clear_block_bitmap(ext2fs_block_bitmap bitmap)
{
 ext2fs_clear_generic_bmap(bitmap);
}
