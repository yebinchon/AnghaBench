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
typedef  scalar_t__ u_int ;
struct utf8_data {scalar_t__ size; } ;
struct grid_cell {int flags; int /*<<< orphan*/  data; } ;
struct grid {scalar_t__ hsize; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int /*<<< orphan*/  FUNC0 (struct utf8_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC2 (struct grid*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct utf8_data*,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (struct utf8_data*) ; 
 struct utf8_data* FUNC5 (struct utf8_data*,size_t,int) ; 

char *
FUNC6(struct grid *gd, u_int y)
{
	struct grid_cell	 gc;
	struct utf8_data	*ud = NULL;
	u_int			 x;
	size_t			 size = 0;
	char			*s = NULL;

	y = gd->hsize + y;
	for (x = 0; x < FUNC2(gd, y); x++) {
		FUNC1(gd, x, y, &gc);
		if (gc.flags & GRID_FLAG_PADDING)
			break;

		ud = FUNC5(ud, size + 2, sizeof *ud);
		FUNC3(&ud[size++], &gc.data, sizeof *ud);
	}
	if (size != 0) {
		ud[size].size = 0;
		s = FUNC4(ud);
		FUNC0(ud);
	}
	return (s);
}