
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FileSysType; } ;
struct TYPE_4__ {int FileSysType; } ;
struct fat_boot_sector {TYPE_1__ bs32; TYPE_2__ bs16; scalar_t__ bsFATs; scalar_t__ bsResSectors; } ;


 int memcmp (int ,char*,int) ;

__attribute__((used)) static inline int fat_check_sb_fields(const struct fat_boot_sector *sb)
{
    return sb->bsResSectors && sb->bsFATs &&
            (!memcmp(sb->bs16.FileSysType, "FAT12   ", 8) ||
             !memcmp(sb->bs16.FileSysType, "FAT16   ", 8) ||
             !memcmp(sb->bs16.FileSysType, "FAT     ", 8) ||
             !memcmp(sb->bs32.FileSysType, "FAT32   ", 8));
}
