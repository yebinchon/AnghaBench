
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {scalar_t__ bg_flags; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
struct TYPE_4__ {int group_desc; } ;


 struct ext4_group_desc* ext4fs_group_desc (TYPE_1__*,int ,int ) ;

void ext2fs_bg_flags_zap(ext2_filsys fs, dgrp_t group)
{
 struct ext4_group_desc *gdp;

 gdp = ext4fs_group_desc(fs, fs->group_desc, group);
 gdp->bg_flags = 0;
 return;
}
