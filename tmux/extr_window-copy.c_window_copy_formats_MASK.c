#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  grid; int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {char* oy; char* rectflag; char* cx; char* cy; char* selx; char* sely; char* endselx; char* endsely; TYPE_1__ screen; } ;
struct format_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct format_tree*,char*,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme, struct format_tree *ft)
{
	struct window_copy_mode_data	*data = wme->data;
	char				*s;

	FUNC0(ft, "scroll_position", "%d", data->oy);
	FUNC0(ft, "rectangle_toggle", "%d", data->rectflag);

	FUNC0(ft, "copy_cursor_x", "%d", data->cx);
	FUNC0(ft, "copy_cursor_y", "%d", data->cy);

	FUNC0(ft, "selection_present", "%d", data->screen.sel != NULL);
	if (data->screen.sel != NULL) {
		FUNC0(ft, "selection_start_x", "%d", data->selx);
		FUNC0(ft, "selection_start_y", "%d", data->sely);
		FUNC0(ft, "selection_end_x", "%d", data->endselx);
		FUNC0(ft, "selection_end_y", "%d", data->endsely);
	}

	s = FUNC2(data->screen.grid, data->cx, data->cy);
	if (s != NULL) {
		FUNC0(ft, "copy_cursor_word", "%s", s);
		FUNC3(s);
	}

	s = FUNC1(data->screen.grid, data->cy);
	if (s != NULL) {
		FUNC0(ft, "copy_cursor_line", "%s", s);
		FUNC3(s);
	}
}