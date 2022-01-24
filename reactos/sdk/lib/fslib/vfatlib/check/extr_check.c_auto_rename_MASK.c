#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int lcase; int attr; struct TYPE_9__* name; } ;
struct TYPE_8__ {TYPE_4__ dir_ent; int /*<<< orphan*/  offset; int /*<<< orphan*/  lfn_offset; scalar_t__ lfn; struct TYPE_8__* next; TYPE_1__* parent; } ;
struct TYPE_7__ {TYPE_2__* first; } ;
typedef  TYPE_2__ DOS_FILE ;

/* Variables and functions */
 int ATTR_DIR ; 
 int ATTR_VOLUME ; 
 int FAT_NO_83NAME ; 
 scalar_t__ MSDOS_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int) ; 
 TYPE_2__* root ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(DOS_FILE * file)
{
    DOS_FILE *first, *walk;
    uint32_t number;

    if (!file->offset)
	return;			/* cannot rename FAT32 root dir */
    first = file->parent ? file->parent->first : root;
    number = 0;
    while (1) {
	char num[8];
	FUNC4(num, "%07lu", (unsigned long)number);
	FUNC3(file->dir_ent.name, "FSCK", 4);
	FUNC3(file->dir_ent.name + 4, num, 7);
	for (walk = first; walk; walk = walk->next)
	    if (walk != file
		&& !FUNC5((const char *)walk->dir_ent.name,
			    (const char *)file->dir_ent.name, MSDOS_NAME))
		break;
	if (!walk) {
	    if (file->dir_ent.lcase & FAT_NO_83NAME) {
		/* as we only assign a new 8.3 filename, reset flag that 8.3 name is not
		   present */
		file->dir_ent.lcase &= ~FAT_NO_83NAME;
		/* reset the attributes, only keep DIR and VOLUME */
		file->dir_ent.attr &= ~(ATTR_DIR | ATTR_VOLUME);
		FUNC1(file->offset, MSDOS_NAME + 2, &file->dir_ent);
	    } else {
		FUNC1(file->offset, MSDOS_NAME, file->dir_ent.name);
	    }
	    if (file->lfn)
		FUNC2(file->lfn_offset, file->offset,
				 (const char *)file->dir_ent.name);
	    return;
	}
	number++;
	if (number > 9999999) {
	    FUNC0("Too many files need repair.");
	}
    }
    FUNC0("Can't generate a unique name.");
}