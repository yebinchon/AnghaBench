
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_super_block {scalar_t__ s_checksum_type; } ;
typedef TYPE_1__* ext2_filsys ;
struct TYPE_3__ {int super; } ;


 scalar_t__ EXT2_CRC32C_CHKSUM ;
 int ext2fs_has_feature_metadata_csum (int ) ;

int ext2fs_verify_csum_type(ext2_filsys fs, struct ext2_super_block *sb)
{
 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 1;

 return sb->s_checksum_type == EXT2_CRC32C_CHKSUM;
}
