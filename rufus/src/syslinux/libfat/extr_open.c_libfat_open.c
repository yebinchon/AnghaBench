
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct libfat_filesystem {int (* read ) (intptr_t,void*,size_t,libfat_sector_t) ;intptr_t readptr; int clustsize; int clustshift; int end; int fat; int rootdir; scalar_t__ data; int endcluster; scalar_t__ fat_type; void* rootcluster; int * sectors; } ;
struct TYPE_3__ {int bpb_rootclus; int bpb_fatsz32; } ;
struct TYPE_4__ {TYPE_1__ fat32; } ;
struct fat_bootsect {TYPE_2__ u; int bsRootDirEnts; int bsFATs; int bsFATsecs; int bsResSectors; int bsHugeSectors; int bsSectors; int bsSecPerClust; int bsBytesPerSec; } ;


 scalar_t__ FAT12 ;
 scalar_t__ FAT16 ;
 scalar_t__ FAT28 ;
 int LIBFAT_SECTOR_MASK ;
 int LIBFAT_SECTOR_SHIFT ;
 int LIBFAT_SECTOR_SIZE ;
 int free (struct libfat_filesystem*) ;
 struct fat_bootsect* libfat_get_sector (struct libfat_filesystem*,int ) ;
 struct libfat_filesystem* malloc (int) ;
 int read16 (int *) ;
 void* read32 (int *) ;
 int read8 (int *) ;

struct libfat_filesystem *
libfat_open(int (*readfunc) (intptr_t, void *, size_t, libfat_sector_t),
     intptr_t readptr)
{
    struct libfat_filesystem *fs = ((void*)0);
    struct fat_bootsect *bs;
    int i;
    uint32_t sectors, fatsize, minfatsize, rootdirsize;
    uint32_t nclusters;

    fs = malloc(sizeof(struct libfat_filesystem));
    if (!fs)
 goto barf;

    fs->sectors = ((void*)0);
    fs->read = readfunc;
    fs->readptr = readptr;

    bs = libfat_get_sector(fs, 0);
    if (!bs)
 goto barf;

    if (read16(&bs->bsBytesPerSec) != LIBFAT_SECTOR_SIZE)
 goto barf;

    for (i = 0; i <= 8; i++) {
 if ((uint8_t) (1 << i) == read8(&bs->bsSecPerClust))
     break;
    }
    if (i > 8)
 goto barf;
    fs->clustsize = 1 << i;
    fs->clustshift = i;

    sectors = read16(&bs->bsSectors);
    if (!sectors)
 sectors = read32(&bs->bsHugeSectors);

    fs->end = sectors;

    fs->fat = read16(&bs->bsResSectors);
    fatsize = read16(&bs->bsFATsecs);
    if (!fatsize)
 fatsize = read32(&bs->u.fat32.bpb_fatsz32);

    fs->rootdir = fs->fat + fatsize * read8(&bs->bsFATs);

    rootdirsize = ((read16(&bs->bsRootDirEnts) << 5) + LIBFAT_SECTOR_MASK)
 >> LIBFAT_SECTOR_SHIFT;
    fs->data = fs->rootdir + rootdirsize;


    if (fs->data >= fs->end)
 goto barf;


    nclusters = (fs->end - fs->data) >> fs->clustshift;
    fs->endcluster = nclusters + 2;

    if (nclusters <= 0xff4) {
 fs->fat_type = FAT12;
 minfatsize = fs->endcluster + (fs->endcluster >> 1);
    } else if (nclusters <= 0xfff4) {
 fs->fat_type = FAT16;
 minfatsize = fs->endcluster << 1;
    } else if (nclusters <= 0xffffff4) {
 fs->fat_type = FAT28;
 minfatsize = fs->endcluster << 2;
    } else
 goto barf;

    minfatsize = (minfatsize + LIBFAT_SECTOR_SIZE - 1) >> LIBFAT_SECTOR_SHIFT;

    if (minfatsize > fatsize)
 goto barf;

    if (fs->fat_type == FAT28)
 fs->rootcluster = read32(&bs->u.fat32.bpb_rootclus);
    else
 fs->rootcluster = 0;

    return fs;

barf:
    if (fs)
 free(fs);
    return ((void*)0);
}
