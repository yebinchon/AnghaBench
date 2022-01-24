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
struct libfat_sector {struct libfat_sector* next; } ;
struct libfat_filesystem {struct libfat_sector* sectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libfat_sector*) ; 

void FUNC1(struct libfat_filesystem *fs)
{
    struct libfat_sector *ls, *lsnext;

    lsnext = fs->sectors;
    fs->sectors = NULL;

    for (ls = lsnext; ls; ls = lsnext) {
	lsnext = ls->next;
	FUNC0(ls);
    }
}