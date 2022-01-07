
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mmp_struct {int mmp_checksum; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; } ;


 int ext2fs_cpu_to_le32 (int ) ;
 int ext2fs_has_feature_metadata_csum (int ) ;
 int ext2fs_mmp_csum (TYPE_1__*,struct mmp_struct*) ;

errcode_t ext2fs_mmp_csum_set(ext2_filsys fs, struct mmp_struct *mmp)
{
 __u32 crc;

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 0;

 crc = ext2fs_mmp_csum(fs, mmp);
 mmp->mmp_checksum = ext2fs_cpu_to_le32(crc);

 return 0;
}
