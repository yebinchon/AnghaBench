
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntfs_boot_sector {int NTFS_bsCode; int NTFS_bsHead; } ;
struct fat_boot_sector {int FAT_bsCode; int FAT_bsHead; } ;


 int FAT_bsCodeLen ;
 int FAT_bsHeadLen ;
 int NTFS ;
 int NTFS_bsCodeLen ;
 int NTFS_bsHeadLen ;
 int VFAT ;
 scalar_t__ boot_sector ;
 int memcpy (int *,int *,int ) ;

void syslinux_make_bootsect(void *bs, int fs_type)
{
    if (fs_type == VFAT) {
 struct fat_boot_sector *bootsect = bs;
 const struct fat_boot_sector *sbs =
     (const struct fat_boot_sector *)boot_sector;

 memcpy(&bootsect->FAT_bsHead, &sbs->FAT_bsHead, FAT_bsHeadLen);
 memcpy(&bootsect->FAT_bsCode, &sbs->FAT_bsCode, FAT_bsCodeLen);
    } else if (fs_type == NTFS) {
 struct ntfs_boot_sector *bootsect = bs;
 const struct ntfs_boot_sector *sbs =
     (const struct ntfs_boot_sector *)boot_sector;

 memcpy(&bootsect->NTFS_bsHead, &sbs->NTFS_bsHead, NTFS_bsHeadLen);
 memcpy(&bootsect->NTFS_bsCode, &sbs->NTFS_bsCode, NTFS_bsCodeLen);
    }
}
