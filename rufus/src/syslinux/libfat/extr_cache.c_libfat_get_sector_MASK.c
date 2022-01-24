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
struct libfat_sector {scalar_t__ n; void* data; struct libfat_sector* next; } ;
struct libfat_filesystem {scalar_t__ (* read ) (int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__) ;struct libfat_sector* sectors; int /*<<< orphan*/  readptr; } ;
typedef  scalar_t__ libfat_sector_t ;

/* Variables and functions */
 scalar_t__ LIBFAT_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct libfat_sector*) ; 
 struct libfat_sector* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct libfat_filesystem*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__) ; 

void *FUNC4(struct libfat_filesystem *fs, libfat_sector_t n)
{
    struct libfat_sector *ls;

    for (ls = fs->sectors; ls; ls = ls->next) {
	if (ls->n == n)
	    return ls->data;	/* Found in cache */
    }

    /* Not found in cache */
    ls = FUNC1(sizeof(struct libfat_sector) + LIBFAT_SECTOR_SIZE, 16);
    if (!ls) {
	FUNC2(fs);
	ls = FUNC1(sizeof(struct libfat_sector) + LIBFAT_SECTOR_SIZE, 16);

	if (!ls)
	    return NULL;	/* Can't allocate memory */
    }

    if (fs->read(fs->readptr, ls->data, LIBFAT_SECTOR_SIZE, n)
	!= LIBFAT_SECTOR_SIZE) {
	FUNC0(ls);
	return NULL;		/* I/O error */
    }

    ls->n = n;
    ls->next = fs->sectors;
    fs->sectors = ls;

    return ls->data;
}