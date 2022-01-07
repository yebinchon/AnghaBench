
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntfs_boot_sector {int bsOemName; } ;


 int memcmp (int ,char*,int) ;
 scalar_t__ ntfs_check_zero_fields (struct ntfs_boot_sector const*) ;

__attribute__((used)) static inline int ntfs_check_sb_fields(const struct ntfs_boot_sector *sb)
{
    return ntfs_check_zero_fields(sb) &&
            (!memcmp(sb->bsOemName, "NTFS    ", 8) ||
             !memcmp(sb->bsOemName, "MSWIN4.0", 8) ||
             !memcmp(sb->bsOemName, "MSWIN4.1", 8));
}
