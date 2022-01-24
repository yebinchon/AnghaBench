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
struct ntfs_boot_sector {int dummy; } ;
struct fat_boot_sector {int /*<<< orphan*/  bsBytesPerSec; int /*<<< orphan*/  bsMedia; } ;

/* Variables and functions */
 int SECTOR_SIZE ; 
 char* FUNC0 (void const*,int*) ; 
 char* FUNC1 (void const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ntfs_boot_sector*) ; 

const char *FUNC5(const void *bs, int *fs_type)
{
    uint8_t media_sig;
    int sectorsize;
    const struct fat_boot_sector *sectbuf = bs;
    const char *retval;

    media_sig = FUNC3(&sectbuf->bsMedia);
    /* Must be 0xF0 or 0xF8-0xFF for FAT/NTFS volumes */
    if (media_sig != 0xF0 && media_sig < 0xF8)
	return "invalid media signature (not an FAT/NTFS volume?)";

    sectorsize = FUNC2(&sectbuf->bsBytesPerSec);
    if (sectorsize == SECTOR_SIZE) ;	/* ok */
    else if (sectorsize >= 512 && sectorsize <= 4096 &&
	     (sectorsize & (sectorsize - 1)) == 0)
	return "unsupported sectors size";
    else
	return "impossible sector size";

    if (FUNC4((struct ntfs_boot_sector *)bs))
	retval = FUNC1(bs, fs_type);
    else
	retval = FUNC0(bs, fs_type);

    return retval;
}