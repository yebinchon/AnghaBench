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
struct inode {int i_blocks; int /*<<< orphan*/  i_flags; struct super_block* i_sb; } ;
struct ext3_inode {void* i_blocks_high; void* i_blocks; } ;
typedef  void* __u32 ;
typedef  void* __u16 ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;

/* Variables and functions */
 int BLOCK_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_HUGE_FILE ; 
 int /*<<< orphan*/  EXT4_HUGE_FILE_FL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (int) ; 

int FUNC5(struct ext3_inode *raw_inode,
                          struct inode * inode)
{
    u64 i_blocks = inode->i_blocks;
    struct super_block *sb = inode->i_sb;
    PEXT2_VCB Vcb = (PEXT2_VCB)sb->s_priv;

    if (i_blocks < 0x100000000) {
        /*
         * i_blocks can be represnted in a 32 bit variable
         * as multiple of 512 bytes
         */
        raw_inode->i_blocks = FUNC4(i_blocks);
        raw_inode->i_blocks_high = 0;
        inode->i_flags &= ~EXT4_HUGE_FILE_FL;
        return 0;
    }

    if (!FUNC0(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {
        FUNC1(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE);
        FUNC2(NULL, Vcb);
    }

    if (i_blocks <= 0xffffffffffff) {
        /*
         * i_blocks can be represented in a 48 bit variable
         * as multiple of 512 bytes
         */
        raw_inode->i_blocks = (__u32)FUNC4(i_blocks);
        raw_inode->i_blocks_high = (__u16)FUNC3(i_blocks >> 32);
        inode->i_flags &= ~EXT4_HUGE_FILE_FL;
    } else {
        inode->i_flags |= EXT4_HUGE_FILE_FL;
        /* i_block is stored in file system block size */
        i_blocks = i_blocks >> (BLOCK_BITS - 9);
        raw_inode->i_blocks  = (__u32)FUNC4(i_blocks);
        raw_inode->i_blocks_high = (__u16)FUNC3(i_blocks >> 32);
    }
    return 0;
}