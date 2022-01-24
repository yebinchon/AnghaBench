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
struct window {int dummy; } ;
struct layout_cell {int dummy; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window*) ; 
 int /*<<< orphan*/  FUNC1 (struct window*) ; 
 int FUNC2 (struct window*,struct layout_cell*,int,int,int) ; 
 int FUNC3 (struct window*,struct layout_cell*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct window*) ; 

void
FUNC5(struct window *w, struct layout_cell *lc,
    enum layout_type type, int change, int opposite)
{
	int	needed, size;

	/* Grow or shrink the cell. */
	needed = change;
	while (needed != 0) {
		if (change > 0) {
			size = FUNC2(w, lc, type, needed,
			    opposite);
			needed -= size;
		} else {
			size = FUNC3(w, lc, type, needed);
			needed += size;
		}

		if (size == 0)	/* no more change possible */
			break;
	}

	/* Fix cell offsets. */
	FUNC0(w);
	FUNC1(w);
	FUNC4("window-layout-changed", w);
}