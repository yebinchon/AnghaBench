#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct libfat_filesystem {scalar_t__ clustsize; scalar_t__ data; scalar_t__ rootdir; scalar_t__ clustshift; int endcluster; int fat_type; scalar_t__ fat; } ;
typedef  scalar_t__ libfat_sector_t ;
typedef  int /*<<< orphan*/  le32_t ;
typedef  int /*<<< orphan*/  le16_t ;
typedef  int int32_t ;

/* Variables and functions */
#define  FAT12 130 
#define  FAT16 129 
#define  FAT28 128 
 scalar_t__ LIBFAT_SECTOR_MASK ; 
 scalar_t__ LIBFAT_SECTOR_SHIFT ; 
 scalar_t__ FUNC0 (struct libfat_filesystem*,int) ; 
 int* FUNC1 (struct libfat_filesystem*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

libfat_sector_t FUNC4(struct libfat_filesystem * fs,
				  libfat_sector_t s)
{
    int32_t cluster, nextcluster;
    uint32_t fatoffset;
    libfat_sector_t fatsect;
    uint8_t *fsdata;
    uint32_t clustmask = fs->clustsize - 1;
    libfat_sector_t rs;

    if (s < fs->data) {
	if (s < fs->rootdir)
	    return -1;

	/* Root directory */
	s++;
	return (s < fs->data) ? s : 0;
    }

    rs = s - fs->data;

    if (~rs & clustmask)
	return s + 1;		/* Next sector in cluster */

    cluster = 2 + (rs >> fs->clustshift);

    if (cluster >= fs->endcluster)
	return -1;

    switch (fs->fat_type) {
    case FAT12:
	/* Get first byte */
	fatoffset = cluster + (cluster >> 1);
	fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
	fsdata = FUNC1(fs, fatsect);
	if (!fsdata)
	    return -1;
	nextcluster = fsdata[fatoffset & LIBFAT_SECTOR_MASK];

	/* Get second byte */
	fatoffset++;
	fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
	fsdata = FUNC1(fs, fatsect);
	if (!fsdata)
	    return -1;
	nextcluster |= fsdata[fatoffset & LIBFAT_SECTOR_MASK] << 8;

	/* Extract the FAT entry */
	if (cluster & 1)
	    nextcluster >>= 4;
	else
	    nextcluster &= 0x0FFF;

	if (nextcluster >= 0x0FF8)
	    return 0;
	break;

    case FAT16:
	fatoffset = cluster << 1;
	fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
	fsdata = FUNC1(fs, fatsect);
	if (!fsdata)
	    return -1;
	nextcluster =
	    FUNC2((le16_t *) & fsdata[fatoffset & LIBFAT_SECTOR_MASK]);

	if (nextcluster >= 0x0FFF8)
	    return 0;
	break;

    case FAT28:
	fatoffset = cluster << 2;
	fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
	fsdata = FUNC1(fs, fatsect);
	if (!fsdata)
	    return -1;
	nextcluster =
	    FUNC3((le32_t *) & fsdata[fatoffset & LIBFAT_SECTOR_MASK]);
	nextcluster &= 0x0FFFFFFF;

	if (nextcluster >= 0x0FFFFFF8)
	    return 0;
	break;

    default:
	return -1;		/* WTF? */
    }

    return FUNC0(fs, nextcluster);
}