#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int lcase; int attr; struct TYPE_6__* name; } ;
struct TYPE_5__ {TYPE_3__ dir_ent; int /*<<< orphan*/  offset; int /*<<< orphan*/  lfn_offset; scalar_t__ lfn; } ;
typedef  TYPE_1__ DOS_FILE ;

/* Variables and functions */
 int ATTR_DIR ; 
 int ATTR_VOLUME ; 
 int FAT_NO_83NAME ; 
 scalar_t__ MSDOS_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (char const*,char) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(DOS_FILE * file)
{
#ifndef __REACTOS__
    unsigned char name[46];
    unsigned char *walk, *here;
#endif

    if (!file->offset) {
#ifndef __REACTOS__
	FUNC6("Cannot rename FAT32 root dir\n");
#else
	VfatPrint( "Cannot rename FAT32 root dir\n" );
#endif
	return;			/* cannot rename FAT32 root dir */
    }
    while (1) {
#ifndef __REACTOS__
	FUNC6("New name: ");
	FUNC1(stdout);
	if (FUNC2((char *)name, 45, stdin)) {
	    if ((here = (unsigned char *)FUNC7((const char *)name, '\n')))
		*here = 0;
	    for (walk = (unsigned char *)FUNC8((const char *)name, 0);
		 walk >= name && (*walk == ' ' || *walk == '\t'); walk--) ;
	    walk[1] = 0;
	    for (walk = name; *walk == ' ' || *walk == '\t'; walk++) ;
	    if (FUNC3(walk, file->dir_ent.name)) {
		if (file->dir_ent.lcase & FAT_NO_83NAME) {
		    /* as we only assign a new 8.3 filename, reset flag that 8.3 name is not
		       present */
		    file->dir_ent.lcase &= ~FAT_NO_83NAME;
		    /* reset the attributes, only keep DIR and VOLUME */
		    file->dir_ent.attr &= ~(ATTR_DIR | ATTR_VOLUME);
		    FUNC4(file->offset, MSDOS_NAME + 2, &file->dir_ent);
		} else {
		    FUNC4(file->offset, MSDOS_NAME, file->dir_ent.name);
		}
		if (file->lfn)
		    FUNC5(file->lfn_offset, file->offset,
				     (const char *)file->dir_ent.name);
		return;
	    }
	}
#else
    return;
#endif
    }
}