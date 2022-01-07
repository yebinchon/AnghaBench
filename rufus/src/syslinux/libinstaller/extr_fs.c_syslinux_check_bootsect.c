
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ntfs_boot_sector {int dummy; } ;
struct fat_boot_sector {int bsBytesPerSec; int bsMedia; } ;


 int SECTOR_SIZE ;
 char* check_fat_bootsect (void const*,int*) ;
 char* check_ntfs_bootsect (void const*,int*) ;
 int get_16 (int *) ;
 int get_8 (int *) ;
 scalar_t__ ntfs_check_zero_fields (struct ntfs_boot_sector*) ;

const char *syslinux_check_bootsect(const void *bs, int *fs_type)
{
    uint8_t media_sig;
    int sectorsize;
    const struct fat_boot_sector *sectbuf = bs;
    const char *retval;

    media_sig = get_8(&sectbuf->bsMedia);

    if (media_sig != 0xF0 && media_sig < 0xF8)
 return "invalid media signature (not an FAT/NTFS volume?)";

    sectorsize = get_16(&sectbuf->bsBytesPerSec);
    if (sectorsize == SECTOR_SIZE) ;
    else if (sectorsize >= 512 && sectorsize <= 4096 &&
      (sectorsize & (sectorsize - 1)) == 0)
 return "unsupported sectors size";
    else
 return "impossible sector size";

    if (ntfs_check_zero_fields((struct ntfs_boot_sector *)bs))
 retval = check_ntfs_bootsect(bs, fs_type);
    else
 retval = check_fat_bootsect(bs, fs_type);

    return retval;
}
