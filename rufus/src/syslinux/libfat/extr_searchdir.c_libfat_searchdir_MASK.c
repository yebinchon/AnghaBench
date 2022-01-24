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
struct libfat_filesystem {int dummy; } ;
struct libfat_direntry {int offset; scalar_t__ sector; int /*<<< orphan*/  entry; } ;
struct fat_dirent {scalar_t__* name; int /*<<< orphan*/  clusthi; int /*<<< orphan*/  clustlo; int /*<<< orphan*/  size; } ;
typedef  scalar_t__ libfat_sector_t ;
typedef  int int32_t ;

/* Variables and functions */
 int LIBFAT_SECTOR_SIZE ; 
 scalar_t__ FUNC0 (struct libfat_filesystem*,int) ; 
 struct fat_dirent* FUNC1 (struct libfat_filesystem*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct libfat_filesystem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fat_dirent*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int32_t FUNC7(struct libfat_filesystem *fs, int32_t dirclust,
			 const void *name, struct libfat_direntry *direntry)
{
    struct fat_dirent *dep;
    int nent;
    libfat_sector_t s = FUNC0(fs, dirclust);

    while (1) {
	if (s == 0)
	    return -2;		/* Not found */
	else if (s == (libfat_sector_t) - 1)
	    return -1;		/* Error */

	dep = FUNC1(fs, s);
	if (!dep)
	    return -1;		/* Read error */

	for (nent = 0; nent < LIBFAT_SECTOR_SIZE;
	     nent += sizeof(struct fat_dirent)) {
	    if (!FUNC3(dep->name, name, 11)) {
		if (direntry) {
		    FUNC4(direntry->entry, dep, sizeof(*dep));
		    direntry->sector = s;
		    direntry->offset = nent;
		}
		if (FUNC6(&dep->size) == 0)
		    return 0;	/* An empty file has no clusters */
		else
		    return FUNC5(&dep->clustlo) +
			(FUNC5(&dep->clusthi) << 16);
	    }

	    if (dep->name[0] == 0)
		return -2;	/* Hit high water mark */

	    dep++;
	}

	s = FUNC2(fs, s);
    }
}