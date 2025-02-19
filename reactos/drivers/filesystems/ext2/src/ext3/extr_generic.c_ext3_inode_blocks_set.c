
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int s_priv; } ;
struct inode {int i_blocks; int i_flags; struct super_block* i_sb; } ;
struct ext3_inode {void* i_blocks_high; void* i_blocks; } ;
typedef void* __u32 ;
typedef void* __u16 ;
typedef int PEXT2_VCB ;


 int BLOCK_BITS ;
 int EXT3_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT3_SET_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_FEATURE_RO_COMPAT_HUGE_FILE ;
 int EXT4_HUGE_FILE_FL ;
 int Ext2SaveSuper (int *,int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;

int ext3_inode_blocks_set(struct ext3_inode *raw_inode,
                          struct inode * inode)
{
    u64 i_blocks = inode->i_blocks;
    struct super_block *sb = inode->i_sb;
    PEXT2_VCB Vcb = (PEXT2_VCB)sb->s_priv;

    if (i_blocks < 0x100000000) {




        raw_inode->i_blocks = cpu_to_le32(i_blocks);
        raw_inode->i_blocks_high = 0;
        inode->i_flags &= ~EXT4_HUGE_FILE_FL;
        return 0;
    }

    if (!EXT3_HAS_RO_COMPAT_FEATURE(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {
        EXT3_SET_RO_COMPAT_FEATURE(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE);
        Ext2SaveSuper(((void*)0), Vcb);
    }

    if (i_blocks <= 0xffffffffffff) {




        raw_inode->i_blocks = (__u32)cpu_to_le32(i_blocks);
        raw_inode->i_blocks_high = (__u16)cpu_to_le16(i_blocks >> 32);
        inode->i_flags &= ~EXT4_HUGE_FILE_FL;
    } else {
        inode->i_flags |= EXT4_HUGE_FILE_FL;

        i_blocks = i_blocks >> (BLOCK_BITS - 9);
        raw_inode->i_blocks = (__u32)cpu_to_le32(i_blocks);
        raw_inode->i_blocks_high = (__u16)cpu_to_le16(i_blocks >> 32);
    }
    return 0;
}
