
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_ext_attr_header {int h_checksum; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; } ;


 int ext2fs_cpu_to_le32 (int ) ;
 scalar_t__ ext2fs_ext_attr_block_csum (TYPE_1__*,int ,int ,struct ext2_ext_attr_header*,int *) ;
 int ext2fs_has_feature_metadata_csum (int ) ;

errcode_t ext2fs_ext_attr_block_csum_set(ext2_filsys fs, ext2_ino_t inum,
      blk64_t block,
      struct ext2_ext_attr_header *hdr)
{
 errcode_t retval;
 __u32 crc;

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 0;

 retval = ext2fs_ext_attr_block_csum(fs, inum, block, hdr, &crc);
 if (retval)
  return retval;
 hdr->h_checksum = ext2fs_cpu_to_le32(crc);
 return 0;
}
