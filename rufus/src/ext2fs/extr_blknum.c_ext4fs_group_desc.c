
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opaque_ext2_group_desc {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
typedef int ext2_filsys ;
typedef int dgrp_t ;


 scalar_t__ ext2fs_group_desc (int ,struct opaque_ext2_group_desc*,int ) ;

__attribute__((used)) static struct ext4_group_desc *ext4fs_group_desc(ext2_filsys fs,
       struct opaque_ext2_group_desc *gdp,
       dgrp_t group)
{
 return (struct ext4_group_desc *)ext2fs_group_desc(fs, gdp, group);
}
