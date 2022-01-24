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
struct screen_write_ctx {int dummy; } ;
struct screen {int cx; } ;
struct format_ranges {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen_write_ctx*,int,int,struct screen*,struct format_ranges*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct screen_write_ctx *octx,
    u_int ocx, u_int ocy, u_int offset, u_int width, struct screen *list,
    struct screen *list_left, struct screen *list_right, int focus_start,
    int focus_end, struct format_ranges *frs)
{
	u_int	start, focus_centre;

	/* If there is enough space for the list, draw it entirely. */
	if (width >= list->cx) {
		FUNC0(octx, ocx, ocy, list, frs, offset, 0, width);
		return;
	}

	/* The list needs to be trimmed. Try to keep the focus visible. */
	focus_centre = focus_start + (focus_end - focus_start) / 2;
	if (focus_centre < width / 2)
		start = 0;
	else
		start = focus_centre - width / 2;
	if (start + width > list->cx)
		start = list->cx - width;

	/* Draw <> markers at either side if needed. */
	if (start != 0 && width > list_left->cx) {
		FUNC1(octx, ocx + offset, ocy, 0);
		FUNC2(octx, list_left, 0, 0, list_left->cx, 1);
		offset += list_left->cx;
		start += list_left->cx;
		width -= list_left->cx;
	}
	if (start + width < list->cx && width > list_right->cx) {
		FUNC1(octx, ocx + offset + width - 1, ocy, 0);
		FUNC2(octx, list_right, 0, 0, list_right->cx,
		    1);
		width -= list_right->cx;
	}

	/* Draw the list screen itself. */
	FUNC0(octx, ocx, ocy, list, frs, offset, start, width);
}