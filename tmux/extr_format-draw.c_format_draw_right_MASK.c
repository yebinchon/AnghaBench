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
struct screen_write_ctx {int dummy; } ;
struct screen {scalar_t__ cx; } ;
struct format_ranges {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen_write_ctx*,scalar_t__,scalar_t__,scalar_t__,struct screen*,struct screen*,struct screen*,struct format_ranges*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,scalar_t__,scalar_t__,struct screen*,struct format_ranges*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct screen*,struct screen*,struct screen*,int,int,struct format_ranges*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*) ; 

__attribute__((used)) static void
FUNC6(struct screen_write_ctx *octx, u_int available, u_int ocx,
    u_int ocy, struct screen *left, struct screen *centre, struct screen *right,
    struct screen *list, struct screen *list_left, struct screen *list_right,
    struct screen *after, int focus_start, int focus_end,
    struct format_ranges *frs)
{
	u_int			width_left, width_centre, width_right;
	u_int			width_list, width_after;
	struct screen_write_ctx	ctx;

	width_left = left->cx;
	width_centre = centre->cx;
	width_right = right->cx;
	width_list = list->cx;
	width_after = after->cx;

	/*
	 * Trim first the centre, then the list, then the right, then
	 * after the list, then the left.
	 */
	while (width_left +
	    width_centre +
	    width_right +
	    width_list +
	    width_after > available) {
		if (width_centre > 0)
			width_centre--;
		else if (width_list > 0)
			width_list--;
		else if (width_right > 0)
			width_right--;
		else if (width_after > 0)
			width_after--;
		else
			width_left--;
	}

	/* If there is no list left, pass off to the no list function. */
	if (width_list == 0) {
		FUNC4(&ctx, NULL, right);
		FUNC3(&ctx, after, 0, 0, width_after, 1);
		FUNC5(&ctx);

		FUNC0(octx, available, ocx, ocy, left, centre,
		    right, frs);
		return;
	}

	/* Write left at 0. */
	FUNC1(octx, ocx, ocy, left, frs, 0, 0, width_left);

	/* Write after at available - width_after. */
	FUNC1(octx, ocx, ocy, after, frs,
	    available - width_after,
	    after->cx - width_after,
	    width_after);

	/*
	 * Write right at
	 *     available - width_right - width_list - width_after.
	 */
	FUNC1(octx, ocx, ocy, right, frs,
	    available - width_right - width_list - width_after,
	    0,
	    width_right);

	/*
	 * Write centre halfway between
	 *     width_left
	 * and
	 *     available - width_right - width_list - width_after.
	 */
	FUNC1(octx, ocx, ocy, centre, frs,
	    width_left
	    + ((available - width_right - width_list - width_after)
		- width_left) / 2
	    - width_centre / 2,
	    centre->cx / 2 - width_centre / 2,
	    width_centre);

	/*
	 * The list now goes from
	 *     available - width_list - width_after
	 * to
	 *     available - width_after
	 * If there is no focus given, keep the right in focus.
	 */
	if (focus_start == -1 || focus_end == -1)
		focus_start = focus_end = 0;
	FUNC2(octx, ocx, ocy, available - width_list -
	    width_after, width_list, list, list_left, list_right, focus_start,
	    focus_end, frs);
}