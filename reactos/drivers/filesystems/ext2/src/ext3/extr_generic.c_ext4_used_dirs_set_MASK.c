#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_group_desc {void* bg_used_dirs_count_hi; void* bg_used_dirs_count; } ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*) ; 
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ; 
 void* FUNC1 (int) ; 

void FUNC2(struct super_block *sb,
                        struct ext4_group_desc *bg, __u32 count)
{
    bg->bg_used_dirs_count = FUNC1((__u16)count);
    if (FUNC0(sb) >= EXT4_MIN_DESC_SIZE_64BIT)
        bg->bg_used_dirs_count_hi = FUNC1(count >> 16);
}