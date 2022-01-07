
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct ext3_dir_entry_2 {int file_type; } ;


 int EXT3_FEATURE_INCOMPAT_FILETYPE ;
 scalar_t__ EXT3_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int ext3_type_by_mode (int ) ;

void ext3_set_de_type(struct super_block *sb,
                      struct ext3_dir_entry_2 *de,
                      umode_t mode)
{
    if (EXT3_HAS_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_FILETYPE))
        de->file_type = ext3_type_by_mode(mode);
}
