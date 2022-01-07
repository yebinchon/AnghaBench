
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntfs_boot_sector {int bsOemName; } ;


 int NTFS ;
 scalar_t__ memcmp (int *,char*,int) ;

__attribute__((used)) static const char *check_ntfs_bootsect(const void *bs, int *fs_type)
{
    const struct ntfs_boot_sector *sectbuf = bs;

    if (memcmp(&sectbuf->bsOemName, "NTFS    ", 8) &&
 memcmp(&sectbuf->bsOemName, "MSWIN4.0", 8) &&
 memcmp(&sectbuf->bsOemName, "MSWIN4.1", 8))
 return "unknown OEM name but claims NTFS";

    if (fs_type)
 *fs_type = NTFS;

    return ((void*)0);
}
