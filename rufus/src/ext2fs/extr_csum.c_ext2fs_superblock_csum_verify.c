
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_super_block {int s_checksum; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int flags; int super; } ;


 int EXT2_FLAG_SWAP_BYTES ;
 int EXT2_HAS_RO_COMPAT_FEATURE (int ,scalar_t__) ;
 scalar_t__ EXT4_FEATURE_RO_COMPAT_METADATA_CSUM ;
 scalar_t__ ext2fs_cpu_to_le32 (scalar_t__) ;
 scalar_t__ ext2fs_le32_to_cpu (int ) ;
 scalar_t__ ext2fs_superblock_csum (TYPE_1__*,struct ext2_super_block*) ;

int ext2fs_superblock_csum_verify(ext2_filsys fs, struct ext2_super_block *sb)
{
 __u32 flag, calculated;

 if (fs->flags & EXT2_FLAG_SWAP_BYTES)
  flag = EXT4_FEATURE_RO_COMPAT_METADATA_CSUM;
 else
  flag = ext2fs_cpu_to_le32(EXT4_FEATURE_RO_COMPAT_METADATA_CSUM);

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs->super, flag))
  return 1;

 calculated = ext2fs_superblock_csum(fs, sb);

 return ext2fs_le32_to_cpu(sb->s_checksum) == calculated;
}
