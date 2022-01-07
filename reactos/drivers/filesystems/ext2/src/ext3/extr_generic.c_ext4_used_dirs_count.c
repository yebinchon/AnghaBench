
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int bg_used_dirs_count_hi; int bg_used_dirs_count; } ;
typedef int __u32 ;


 scalar_t__ EXT4_DESC_SIZE (struct super_block*) ;
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ;
 int le16_to_cpu (int ) ;

__u32 ext4_used_dirs_count(struct super_block *sb,
                           struct ext4_group_desc *bg)
{
    return le16_to_cpu(bg->bg_used_dirs_count) |
           (EXT4_DESC_SIZE(sb) >= EXT4_MIN_DESC_SIZE_64BIT ?
            (__u32)le16_to_cpu(bg->bg_used_dirs_count_hi) << 16 : 0);
}
