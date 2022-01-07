
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int s_priv; } ;
struct inode {int i_flags; struct super_block* i_sb; } ;
struct ext3_inode {int i_blocks; int i_blocks_high; } ;
typedef int blkcnt_t ;
typedef int PEXT2_VCB ;


 int BLOCK_BITS ;
 scalar_t__ EXT3_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_FEATURE_RO_COMPAT_HUGE_FILE ;
 int EXT4_HUGE_FILE_FL ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

blkcnt_t ext3_inode_blocks(struct ext3_inode *raw_inode,
                           struct inode *inode)
{
    blkcnt_t i_blocks ;
    struct super_block *sb = inode->i_sb;
    PEXT2_VCB Vcb = (PEXT2_VCB)sb->s_priv;

    if (EXT3_HAS_RO_COMPAT_FEATURE(sb,
                                   EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {

        i_blocks = ((u64)le16_to_cpu(raw_inode->i_blocks_high)) << 32 |
                   le32_to_cpu(raw_inode->i_blocks);
        if (inode->i_flags & EXT4_HUGE_FILE_FL) {

            return i_blocks << (BLOCK_BITS - 9);
        } else {
            return i_blocks;
        }
    } else {
        return le32_to_cpu(raw_inode->i_blocks);
    }
}
