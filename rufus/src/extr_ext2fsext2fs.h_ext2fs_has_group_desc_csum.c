
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
struct TYPE_3__ {int super; } ;


 scalar_t__ ext2fs_has_feature_gdt_csum (int ) ;
 scalar_t__ ext2fs_has_feature_metadata_csum (int ) ;

__attribute__((used)) static inline int ext2fs_has_group_desc_csum(ext2_filsys fs)
{
 return ext2fs_has_feature_metadata_csum(fs->super) ||
        ext2fs_has_feature_gdt_csum(fs->super);
}
