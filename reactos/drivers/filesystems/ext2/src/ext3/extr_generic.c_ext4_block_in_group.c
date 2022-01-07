
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef scalar_t__ ext4_group_t ;
typedef int ext4_fsblk_t ;


 int ext4_get_group_no_and_offset (struct super_block*,int ,scalar_t__*,int *) ;

__attribute__((used)) static int ext4_block_in_group(struct super_block *sb, ext4_fsblk_t block,
                               ext4_group_t block_group)
{
    ext4_group_t actual_group;
    ext4_get_group_no_and_offset(sb, block, &actual_group, ((void*)0));
    if (actual_group == block_group)
        return 1;
    return 0;
}
