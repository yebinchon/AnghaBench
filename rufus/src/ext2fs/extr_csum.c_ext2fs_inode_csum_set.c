
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_inode_large {scalar_t__ i_extra_isize; void* i_checksum_hi; void* i_checksum_lo; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; } ;


 scalar_t__ EXT2_GOOD_OLD_INODE_SIZE ;
 scalar_t__ EXT2_INODE_SIZE (int ) ;
 scalar_t__ EXT4_INODE_CSUM_HI_EXTRA_END ;
 void* ext2fs_cpu_to_le16 (int) ;
 int ext2fs_has_feature_metadata_csum (int ) ;
 scalar_t__ ext2fs_inode_csum (TYPE_1__*,int ,struct ext2_inode_large*,int*,int) ;

errcode_t ext2fs_inode_csum_set(ext2_filsys fs, ext2_ino_t inum,
      struct ext2_inode_large *inode)
{
 errcode_t retval;
 __u32 crc;
 int has_hi;

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 0;

 has_hi = (EXT2_INODE_SIZE(fs->super) > EXT2_GOOD_OLD_INODE_SIZE &&
    inode->i_extra_isize >= EXT4_INODE_CSUM_HI_EXTRA_END);

 retval = ext2fs_inode_csum(fs, inum, inode, &crc, has_hi);
 if (retval)
  return retval;
 inode->i_checksum_lo = ext2fs_cpu_to_le16(crc & 0xFFFF);
 if (has_hi)
  inode->i_checksum_hi = ext2fs_cpu_to_le16(crc >> 16);
 return 0;
}
