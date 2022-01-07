
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct opaque_ext2_group_desc {int dummy; } ;
struct ext2_group_desc {int dummy; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
struct TYPE_3__ {int super; } ;


 int EXT2_DESC_SIZE (int ) ;

struct ext2_group_desc *ext2fs_group_desc(ext2_filsys fs,
       struct opaque_ext2_group_desc *gdp,
       dgrp_t group)
{
 int desc_size = EXT2_DESC_SIZE(fs->super) & ~7;

 return (struct ext2_group_desc *)((char *)gdp + group * desc_size);
}
