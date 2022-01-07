
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_group_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,scalar_t__,struct buffer_head**) ;
 scalar_t__ ext4_used_dirs_count (struct super_block*,struct ext4_group_desc*) ;
 int fini_bh (struct buffer_head**) ;

unsigned long ext4_count_dirs(struct super_block * sb)
{
    struct ext4_group_desc *gdp;
    struct buffer_head *bh = ((void*)0);
    unsigned long count = 0;
    ext4_group_t i;

    for (i = 0; i < EXT3_SB(sb)->s_groups_count; i++) {
        gdp = ext4_get_group_desc(sb, i, &bh);
        if (!bh)
            continue;
        count += ext4_used_dirs_count(sb, gdp);
        fini_bh(&bh);
    }
    return count;
}
