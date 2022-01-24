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
struct view {int dummy; } ;
struct line {scalar_t__ type; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 scalar_t__ LINE_COMMIT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  VIEW_ADD_PAGER_REFS ; 
 struct line* FUNC1 (struct view*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,char const*) ; 
 scalar_t__ opt_wrap_lines ; 
 struct line* FUNC3 (struct view*,char const*,int) ; 
 scalar_t__ FUNC4 (struct view*,int /*<<< orphan*/ ) ; 

bool
FUNC5(struct view *view, const char *data, enum line_type type, struct line **line_ptr)
{
	struct line *line;

	if (!data)
		return true;

	if (opt_wrap_lines) {
		line = FUNC3(view, data, type);
	} else {
		line = FUNC1(view, data, type);
	}

	if (!line)
		return false;

	if (line_ptr)
		*line_ptr = line;

	if (line->type == LINE_COMMIT && FUNC4(view, VIEW_ADD_PAGER_REFS))
		FUNC2(view, data + FUNC0("commit "));

	return true;
}