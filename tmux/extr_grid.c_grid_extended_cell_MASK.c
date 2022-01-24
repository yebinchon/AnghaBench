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
struct grid_line {size_t extdsize; struct grid_cell* extddata; int /*<<< orphan*/  flags; } ;
struct grid_cell_entry {int flags; size_t offset; } ;
struct grid_cell {int flags; } ;

/* Variables and functions */
 int GRID_FLAG_CLEARED ; 
 int GRID_FLAG_EXTENDED ; 
 int /*<<< orphan*/  GRID_LINE_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_line*,struct grid_cell_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct grid_cell*,struct grid_cell const*,int) ; 

__attribute__((used)) static struct grid_cell *
FUNC3(struct grid_line *gl, struct grid_cell_entry *gce,
    const struct grid_cell *gc)
{
	struct grid_cell	*gcp;
	int			 flags = (gc->flags & ~GRID_FLAG_CLEARED);

	if (~gce->flags & GRID_FLAG_EXTENDED)
		FUNC1(gl, gce, flags);
	else if (gce->offset >= gl->extdsize)
		FUNC0("offset too big");
	gl->flags |= GRID_LINE_EXTENDED;

	gcp = &gl->extddata[gce->offset];
	FUNC2(gcp, gc, sizeof *gcp);
	gcp->flags = flags;
	return (gcp);
}