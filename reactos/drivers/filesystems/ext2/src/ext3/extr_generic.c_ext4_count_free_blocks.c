
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 scalar_t__ ext4_free_blks_count (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,scalar_t__,struct buffer_head**) ;
 int fini_bh (struct buffer_head**) ;
 int smp_rmb () ;

ext4_fsblk_t ext4_count_free_blocks(struct super_block *sb)
{
    ext4_fsblk_t desc_count;
    struct ext4_group_desc *gdp;
    struct buffer_head *bh = ((void*)0);
    ext4_group_t i;
    ext4_group_t ngroups = EXT3_SB(sb)->s_groups_count;

    desc_count = 0;
    smp_rmb();
    for (i = 0; i < ngroups; i++) {
        gdp = ext4_get_group_desc(sb, i, &bh);
        if (!bh)
            continue;
        desc_count += ext4_free_blks_count(sb, gdp);
        fini_bh(&bh);
    }

    return desc_count;
}
