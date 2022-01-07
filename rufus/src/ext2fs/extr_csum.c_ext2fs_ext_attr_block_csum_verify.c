
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
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int super; } ;


 scalar_t__ ext2fs_ext_attr_block_csum (TYPE_1__*,int ,int ,struct ext2_ext_attr_header*,scalar_t__*) ;
 int ext2fs_has_feature_metadata_csum (int ) ;
 scalar_t__ ext2fs_le32_to_cpu (int ) ;

int ext2fs_ext_attr_block_csum_verify(ext2_filsys fs, ext2_ino_t inum,
          blk64_t block,
          struct ext2_ext_attr_header *hdr)
{
 __u32 calculated;
 errcode_t retval;

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 1;

 retval = ext2fs_ext_attr_block_csum(fs, inum, block, hdr, &calculated);
 if (retval)
  return 0;

 return ext2fs_le32_to_cpu(hdr->h_checksum) == calculated;
}
