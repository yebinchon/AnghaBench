
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_filesystem {int dummy; } ;
struct libfat_direntry {int offset; scalar_t__ sector; int entry; } ;
struct fat_dirent {scalar_t__* name; int clusthi; int clustlo; int size; } ;
typedef scalar_t__ libfat_sector_t ;
typedef int int32_t ;


 int LIBFAT_SECTOR_SIZE ;
 scalar_t__ libfat_clustertosector (struct libfat_filesystem*,int) ;
 struct fat_dirent* libfat_get_sector (struct libfat_filesystem*,scalar_t__) ;
 scalar_t__ libfat_nextsector (struct libfat_filesystem*,scalar_t__) ;
 int memcmp (scalar_t__*,void const*,int) ;
 int memcpy (int ,struct fat_dirent*,int) ;
 int read16 (int *) ;
 scalar_t__ read32 (int *) ;

int32_t libfat_searchdir(struct libfat_filesystem *fs, int32_t dirclust,
    const void *name, struct libfat_direntry *direntry)
{
    struct fat_dirent *dep;
    int nent;
    libfat_sector_t s = libfat_clustertosector(fs, dirclust);

    while (1) {
 if (s == 0)
     return -2;
 else if (s == (libfat_sector_t) - 1)
     return -1;

 dep = libfat_get_sector(fs, s);
 if (!dep)
     return -1;

 for (nent = 0; nent < LIBFAT_SECTOR_SIZE;
      nent += sizeof(struct fat_dirent)) {
     if (!memcmp(dep->name, name, 11)) {
  if (direntry) {
      memcpy(direntry->entry, dep, sizeof(*dep));
      direntry->sector = s;
      direntry->offset = nent;
  }
  if (read32(&dep->size) == 0)
      return 0;
  else
      return read16(&dep->clustlo) +
   (read16(&dep->clusthi) << 16);
     }

     if (dep->name[0] == 0)
  return -2;

     dep++;
 }

 s = libfat_nextsector(fs, s);
    }
}
