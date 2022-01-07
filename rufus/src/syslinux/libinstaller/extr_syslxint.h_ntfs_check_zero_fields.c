
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntfs_boot_sector {int bsZeroed_3; int bsZeroed_2; int bsZeroed_1; int * bsZeroed_0; int bsResSectors; } ;



__attribute__((used)) static inline int ntfs_check_zero_fields(const struct ntfs_boot_sector *sb)
{
    return !sb->bsResSectors && (!sb->bsZeroed_0[0] && !sb->bsZeroed_0[1] &&
            !sb->bsZeroed_0[2]) && !sb->bsZeroed_1 && !sb->bsZeroed_2 &&
            !sb->bsZeroed_3;
}
