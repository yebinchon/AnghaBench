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
typedef  int u_int ;
struct window {int dummy; } ;
struct layout_cell {int dummy; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;

/* Variables and functions */
 struct layout_cell* FUNC0 (struct layout_cell*,int /*<<< orphan*/ ) ; 
 struct layout_cell* FUNC1 (struct layout_cell*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  layout_cells ; 
 int /*<<< orphan*/  FUNC2 (struct window*,struct layout_cell*,int,int) ; 
 int FUNC3 (struct window*,struct layout_cell*,int) ; 

__attribute__((used)) static int
FUNC4(struct window *w, struct layout_cell *lc,
    enum layout_type type, int needed)
{
	struct layout_cell	*lcadd, *lcremove;
	u_int			 size;

	/* Shrinking. Find cell to remove from by walking towards head. */
	lcremove = lc;
	do {
		size = FUNC3(w, lcremove, type);
		if (size != 0)
			break;
		lcremove = FUNC1(lcremove, layout_cells, entry);
	} while (lcremove != NULL);
	if (lcremove == NULL)
		return (0);

	/* And add onto the next cell (from the original cell). */
	lcadd = FUNC0(lc, entry);
	if (lcadd == NULL)
		return (0);

	/* Change the cells. */
	if (size > (u_int) -needed)
		size = -needed;
	FUNC2(w, lcadd, type, size);
	FUNC2(w, lcremove, type, -size);
	return (size);
}