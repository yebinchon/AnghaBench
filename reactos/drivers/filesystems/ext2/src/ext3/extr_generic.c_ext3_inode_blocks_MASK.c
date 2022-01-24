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
typedef  int u64 ;
struct super_block {int /*<<< orphan*/  s_priv; } ;
struct inode {int i_flags; struct super_block* i_sb; } ;
struct ext3_inode {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_blocks_high; } ;
typedef  int blkcnt_t ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;

/* Variables and functions */
 int BLOCK_BITS ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_HUGE_FILE ; 
 int EXT4_HUGE_FILE_FL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

blkcnt_t FUNC3(struct ext3_inode *raw_inode,
                           struct inode *inode)
{
    blkcnt_t i_blocks ;
    struct super_block *sb = inode->i_sb;
    PEXT2_VCB Vcb = (PEXT2_VCB)sb->s_priv;

    if (FUNC0(sb,
                                   EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {
        /* we are using combined 48 bit field */
        i_blocks = ((u64)FUNC1(raw_inode->i_blocks_high)) << 32 |
                   FUNC2(raw_inode->i_blocks);
        if (inode->i_flags & EXT4_HUGE_FILE_FL) {
            /* i_blocks represent file system block size */
            return i_blocks  << (BLOCK_BITS - 9);
        } else {
            return i_blocks;
        }
    } else {
        return FUNC2(raw_inode->i_blocks);
    }
}