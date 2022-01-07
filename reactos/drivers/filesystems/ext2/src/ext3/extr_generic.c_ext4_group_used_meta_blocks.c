
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct ext3_sb_info {int s_itb_per_group; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;


 scalar_t__ EXT3_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 int EXT4_FEATURE_INCOMPAT_FLEX_BG ;
 scalar_t__ ext4_block_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_block_in_group (struct super_block*,scalar_t__,int ) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int ,struct buffer_head**) ;
 scalar_t__ ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_inode_table (struct super_block*,struct ext4_group_desc*) ;
 int fini_bh (struct buffer_head**) ;

__attribute__((used)) static int ext4_group_used_meta_blocks(struct super_block *sb,
                                       ext4_group_t block_group)
{
    ext4_fsblk_t tmp;
    struct ext3_sb_info *sbi = EXT3_SB(sb);

    int used_blocks = sbi->s_itb_per_group + 2;

    if (EXT3_HAS_INCOMPAT_FEATURE(sb, EXT4_FEATURE_INCOMPAT_FLEX_BG)) {
        struct ext4_group_desc *gdp;
        struct buffer_head *bh = ((void*)0);

        gdp = ext4_get_group_desc(sb, block_group, &bh);
        if (!ext4_block_in_group(sb, ext4_block_bitmap(sb, gdp),
                                 block_group))
            used_blocks--;

        if (!ext4_block_in_group(sb, ext4_inode_bitmap(sb, gdp),
                                 block_group))
            used_blocks--;

        tmp = ext4_inode_table(sb, gdp);
        for (; tmp < ext4_inode_table(sb, gdp) +
                sbi->s_itb_per_group; tmp++) {
            if (!ext4_block_in_group(sb, tmp, block_group))
                used_blocks -= 1;
        }
        if (bh)
            fini_bh(&bh);
    }
    return used_blocks;
}
