#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct libfat_filesystem {int dummy; } ;
struct fat_dirent {int attribute; int* name; int caseflags; int /*<<< orphan*/  clusthi; int /*<<< orphan*/  clustlo; int /*<<< orphan*/  size; } ;
typedef  scalar_t__ libfat_sector_t ;
struct TYPE_5__ {scalar_t__ offset; scalar_t__ sector; int /*<<< orphan*/  cluster; } ;
typedef  TYPE_1__ libfat_dirpos_t ;
struct TYPE_6__ {char* name; int attributes; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ libfat_diritem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 struct fat_dirent* FUNC1 (struct libfat_filesystem*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct libfat_filesystem*,int /*<<< orphan*/ ) ; 
 struct fat_dirent* FUNC3 (struct libfat_filesystem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct libfat_filesystem *fs, libfat_dirpos_t *dp,
		   libfat_diritem_t *di)
{
    int i, j;
    struct fat_dirent *dep;

    FUNC4(di->name, 0, sizeof(di->name));
    di->size = 0;
    di->attributes = 0;
    if (dp->offset < 0) {
	/* First entry */
	dp->offset = 0;
	dp->sector = FUNC2(fs, dp->cluster);
	if ((dp->sector == 0) || (dp->sector == (libfat_sector_t)-1))
	    return -1;
	dep = FUNC3(fs, dp->sector);
    } else {
	dep = FUNC1(fs, &dp->sector, &dp->offset);
    }
    if (!dep)
	return -1;	/* Read error */

    /* Ignore volume labels, deleted entries as well as '.' and '..' entries */
    while ((dep->attribute == 0x08) || (dep->name[0] == 0xe5) ||
	   ((dep->name[0] == '.') && (dep->name[2] == ' ') &&
	    ((dep->name[1] == ' ') || (dep->name[1] == '.')))) {
	dep = FUNC1(fs, &dp->sector, &dp->offset);
	if (!dep)
	    return -1;
    }

    if (dep->name[0] == 0)
	return -2;	/* Last entry */

    /* Build UCS-2 name */
    j = -1;
    while (dep->attribute == 0x0F) {	/* LNF (Long File Name) entry */
	i = dep->name[0];
	if ((j < 0) && ((i & 0xF0) != 0x40))  /* End of LFN marker was not found */
	    break;
	/* Isolate and check the sequence number, which should be decrementing */
	i = (i & 0x0F) - 1;
	if ((j >= 0) && (i != j - 1))
	    return -3;
	j = i;
	FUNC0(&di->name[13 * i], dep->name);
	dep = FUNC1(fs, &dp->sector, &dp->offset);
	if (!dep)
	    return -1;
    }

    if (di->name[0] == 0) {
	for (i = 0, j = 0; i < 12; i++) {
	    if ((i >= 8) && (dep->name[i] == ' '))
		break;
	    if (i == 8)
		di->name[j++] = '.';
	    if (dep->name[i] == ' ')
		continue;
	    di->name[j] = dep->name[i];
	    /* Caseflags: bit 3 = lowercase basename, bit 4 = lowercase extension */
	    if ((di->name[j] >= 'A') && (di->name[j] <= 'Z')) {
		if ((dep->caseflags & 0x02) && (i < 8))
		    di->name[j] += 0x20;
		if ((dep->caseflags & 0x04) && (i >= 8))
		    di->name[j] += 0x20;
	    }
	    j++;
	}
    }

    di->attributes = dep->attribute & 0x37;
    di->size = FUNC6(&dep->size);
    return FUNC5(&dep->clustlo) + (FUNC5(&dep->clusthi) << 16);
}