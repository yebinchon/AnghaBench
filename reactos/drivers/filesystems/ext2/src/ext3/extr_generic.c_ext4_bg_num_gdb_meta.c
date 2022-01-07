
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef scalar_t__ ext4_group_t ;


 unsigned long EXT4_DESC_PER_BLOCK (struct super_block*) ;

__attribute__((used)) static unsigned long ext4_bg_num_gdb_meta(struct super_block *sb,
        ext4_group_t group)
{
    unsigned long metagroup = group / EXT4_DESC_PER_BLOCK(sb);
    ext4_group_t first = metagroup * EXT4_DESC_PER_BLOCK(sb);
    ext4_group_t last = first + EXT4_DESC_PER_BLOCK(sb) - 1;

    if (group == first || group == first + 1 || group == last)
        return 1;
    return 0;
}
