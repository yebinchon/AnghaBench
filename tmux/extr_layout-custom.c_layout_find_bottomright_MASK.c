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
struct layout_cell {scalar_t__ type; int /*<<< orphan*/  cells; } ;

/* Variables and functions */
 scalar_t__ LAYOUT_WINDOWPANE ; 
 struct layout_cell* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layout_cells ; 

__attribute__((used)) static struct layout_cell *
FUNC1(struct layout_cell *lc)
{
	if (lc->type == LAYOUT_WINDOWPANE)
		return (lc);
	lc = FUNC0(&lc->cells, layout_cells);
	return (FUNC1(lc));
}