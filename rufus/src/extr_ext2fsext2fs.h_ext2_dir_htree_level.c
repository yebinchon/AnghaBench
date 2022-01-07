
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
struct TYPE_3__ {int super; } ;


 unsigned int EXT4_HTREE_LEVEL ;
 unsigned int EXT4_HTREE_LEVEL_COMPAT ;
 scalar_t__ ext2fs_has_feature_largedir (int ) ;

__attribute__((used)) static inline unsigned int ext2_dir_htree_level(ext2_filsys fs)
{
 if (ext2fs_has_feature_largedir(fs->super))
  return EXT4_HTREE_LEVEL;

 return EXT4_HTREE_LEVEL_COMPAT;
}
