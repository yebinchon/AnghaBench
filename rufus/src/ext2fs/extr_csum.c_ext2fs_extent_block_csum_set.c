
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext3_extent_tail {int et_checksum; } ;
struct ext3_extent_header {int dummy; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; } ;


 int ext2fs_cpu_to_le32 (int ) ;
 scalar_t__ ext2fs_extent_block_csum (TYPE_1__*,int ,struct ext3_extent_header*,int *) ;
 int ext2fs_has_feature_metadata_csum (int ) ;
 struct ext3_extent_tail* get_extent_tail (struct ext3_extent_header*) ;

errcode_t ext2fs_extent_block_csum_set(ext2_filsys fs, ext2_ino_t inum,
           struct ext3_extent_header *eh)
{
 errcode_t retval;
 __u32 crc;
 struct ext3_extent_tail *t = get_extent_tail(eh);

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 0;





 retval = ext2fs_extent_block_csum(fs, inum, eh, &crc);
 if (retval)
  return retval;
 t->et_checksum = ext2fs_cpu_to_le32(crc);
 return retval;
}
