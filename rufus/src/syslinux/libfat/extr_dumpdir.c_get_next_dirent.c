
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_filesystem {int dummy; } ;
struct fat_dirent {int dummy; } ;
typedef scalar_t__ libfat_sector_t ;


 int LIBFAT_SECTOR_SIZE ;
 struct fat_dirent* libfat_get_sector (struct libfat_filesystem*,scalar_t__) ;
 scalar_t__ libfat_nextsector (struct libfat_filesystem*,scalar_t__) ;

__attribute__((used)) static struct fat_dirent* get_next_dirent(struct libfat_filesystem *fs,
       libfat_sector_t *sector, int *offset)
{
    struct fat_dirent *dep;

    *offset += sizeof(struct fat_dirent);
    if (*offset >= LIBFAT_SECTOR_SIZE) {
 *offset = 0;
 *sector = libfat_nextsector(fs, *sector);
 if ((*sector == 0) || (*sector == (libfat_sector_t)-1))
     return ((void*)0);
    }
    dep = libfat_get_sector(fs, *sector);
    if (!dep)
 return ((void*)0);
    dep = (struct fat_dirent*) &((char*)dep)[*offset];
    return dep;
}
