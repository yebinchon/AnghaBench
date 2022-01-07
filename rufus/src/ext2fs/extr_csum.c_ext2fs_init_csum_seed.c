
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
struct TYPE_7__ {int s_uuid; int s_checksum_seed; } ;
struct TYPE_6__ {TYPE_3__* super; int csum_seed; } ;


 int ext2fs_crc32c_le (int ,int ,int) ;
 scalar_t__ ext2fs_has_feature_csum_seed (TYPE_3__*) ;
 scalar_t__ ext2fs_has_feature_ea_inode (TYPE_3__*) ;
 scalar_t__ ext2fs_has_feature_metadata_csum (TYPE_3__*) ;

void ext2fs_init_csum_seed(ext2_filsys fs)
{
 if (ext2fs_has_feature_csum_seed(fs->super))
  fs->csum_seed = fs->super->s_checksum_seed;
 else if (ext2fs_has_feature_metadata_csum(fs->super) ||
   ext2fs_has_feature_ea_inode(fs->super))
  fs->csum_seed = ext2fs_crc32c_le(~0, fs->super->s_uuid,
       sizeof(fs->super->s_uuid));
}
