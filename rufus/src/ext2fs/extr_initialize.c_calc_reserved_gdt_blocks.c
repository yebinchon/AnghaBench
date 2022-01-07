
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_super_block {unsigned long s_blocks_per_group; unsigned long s_first_data_block; } ;
typedef TYPE_1__* ext2_filsys ;
struct TYPE_3__ {void* desc_blocks; struct ext2_super_block* super; } ;


 unsigned int EXT2_ADDR_PER_BLOCK (struct ext2_super_block*) ;
 unsigned int EXT2_DESC_PER_BLOCK (struct ext2_super_block*) ;
 int ext2fs_blocks_count (struct ext2_super_block*) ;
 void* ext2fs_div_ceil (unsigned long,unsigned int) ;
 int printf (char*,unsigned long,unsigned long,unsigned int) ;

__attribute__((used)) static unsigned int calc_reserved_gdt_blocks(ext2_filsys fs)
{
 struct ext2_super_block *sb = fs->super;
 unsigned long bpg = sb->s_blocks_per_group;
 unsigned int gdpb = EXT2_DESC_PER_BLOCK(sb);
 unsigned long max_blocks = 0xffffffff;
 unsigned long rsv_groups;
 unsigned int rsv_gdb;




 if (ext2fs_blocks_count(sb) < max_blocks / 1024)
  max_blocks = ext2fs_blocks_count(sb) * 1024;




 rsv_groups = ext2fs_div_ceil(max_blocks - sb->s_first_data_block, bpg);
 rsv_gdb = ext2fs_div_ceil(rsv_groups, gdpb) - fs->desc_blocks;
 if (rsv_gdb > EXT2_ADDR_PER_BLOCK(sb))
  rsv_gdb = EXT2_ADDR_PER_BLOCK(sb);





 return rsv_gdb;
}
