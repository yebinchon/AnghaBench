#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct libfat_filesystem {int (* read ) (intptr_t,void*,size_t,libfat_sector_t) ;intptr_t readptr; int clustsize; int clustshift; int end; int fat; int rootdir; scalar_t__ data; int endcluster; scalar_t__ fat_type; void* rootcluster; int /*<<< orphan*/ * sectors; } ;
struct TYPE_3__ {int /*<<< orphan*/  bpb_rootclus; int /*<<< orphan*/  bpb_fatsz32; } ;
struct TYPE_4__ {TYPE_1__ fat32; } ;
struct fat_bootsect {TYPE_2__ u; int /*<<< orphan*/  bsRootDirEnts; int /*<<< orphan*/  bsFATs; int /*<<< orphan*/  bsFATsecs; int /*<<< orphan*/  bsResSectors; int /*<<< orphan*/  bsHugeSectors; int /*<<< orphan*/  bsSectors; int /*<<< orphan*/  bsSecPerClust; int /*<<< orphan*/  bsBytesPerSec; } ;

/* Variables and functions */
 scalar_t__ FAT12 ; 
 scalar_t__ FAT16 ; 
 scalar_t__ FAT28 ; 
 int LIBFAT_SECTOR_MASK ; 
 int LIBFAT_SECTOR_SHIFT ; 
 int LIBFAT_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct libfat_filesystem*) ; 
 struct fat_bootsect* FUNC1 (struct libfat_filesystem*,int /*<<< orphan*/ ) ; 
 struct libfat_filesystem* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

struct libfat_filesystem *
FUNC6(int (*readfunc) (intptr_t, void *, size_t, libfat_sector_t),
	    intptr_t readptr)
{
    struct libfat_filesystem *fs = NULL;
    struct fat_bootsect *bs;
    int i;
    uint32_t sectors, fatsize, minfatsize, rootdirsize;
    uint32_t nclusters;

    fs = FUNC2(sizeof(struct libfat_filesystem));
    if (!fs)
	goto barf;

    fs->sectors = NULL;
    fs->read = readfunc;
    fs->readptr = readptr;

    bs = FUNC1(fs, 0);
    if (!bs)
	goto barf;

    if (FUNC3(&bs->bsBytesPerSec) != LIBFAT_SECTOR_SIZE)
	goto barf;

    for (i = 0; i <= 8; i++) {
	if ((uint8_t) (1 << i) == FUNC5(&bs->bsSecPerClust))
	    break;
    }
    if (i > 8)
	goto barf;
    fs->clustsize = 1 << i;	/* Treat 0 as 2^8 = 64K */
    fs->clustshift = i;

    sectors = FUNC3(&bs->bsSectors);
    if (!sectors)
	sectors = FUNC4(&bs->bsHugeSectors);

    fs->end = sectors;

    fs->fat = FUNC3(&bs->bsResSectors);
    fatsize = FUNC3(&bs->bsFATsecs);
    if (!fatsize)
	fatsize = FUNC4(&bs->u.fat32.bpb_fatsz32);

    fs->rootdir = fs->fat + fatsize * FUNC5(&bs->bsFATs);

    rootdirsize = ((FUNC3(&bs->bsRootDirEnts) << 5) + LIBFAT_SECTOR_MASK)
	>> LIBFAT_SECTOR_SHIFT;
    fs->data = fs->rootdir + rootdirsize;

    /* Sanity checking */
    if (fs->data >= fs->end)
	goto barf;

    /* Figure out how many clusters */
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
	goto barf;		/* Impossibly many clusters */

    minfatsize = (minfatsize + LIBFAT_SECTOR_SIZE - 1) >> LIBFAT_SECTOR_SHIFT;

    if (minfatsize > fatsize)
	goto barf;		/* The FATs don't fit */

    if (fs->fat_type == FAT28)
	fs->rootcluster = FUNC4(&bs->u.fat32.bpb_rootclus);
    else
	fs->rootcluster = 0;

    return fs;			/* All good */

barf:
    if (fs)
	FUNC0(fs);
    return NULL;
}