
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_super_block {void* s_checksum; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef void* __u32 ;
struct TYPE_4__ {int flags; int super; } ;


 int EXT2_FLAG_SWAP_BYTES ;
 int EXT2_HAS_RO_COMPAT_FEATURE (int ,void*) ;
 void* EXT4_FEATURE_RO_COMPAT_METADATA_CSUM ;
 void* ext2fs_cpu_to_le32 (void*) ;
 void* ext2fs_superblock_csum (TYPE_1__*,struct ext2_super_block*) ;

errcode_t ext2fs_superblock_csum_set(ext2_filsys fs,
         struct ext2_super_block *sb)
{
 __u32 flag, crc;

 if (fs->flags & EXT2_FLAG_SWAP_BYTES)
  flag = EXT4_FEATURE_RO_COMPAT_METADATA_CSUM;
 else
  flag = ext2fs_cpu_to_le32(EXT4_FEATURE_RO_COMPAT_METADATA_CSUM);

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs->super, flag))
  return 0;

 crc = ext2fs_superblock_csum(fs, sb);
 sb->s_checksum = ext2fs_cpu_to_le32(crc);

 return 0;
}
